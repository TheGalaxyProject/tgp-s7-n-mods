.class public Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;
.super Ljava/lang/Object;
.source "XMLCreator.java"


# instance fields
.field dBuilder:Ljavax/xml/parsers/DocumentBuilder;

.field dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

.field document:Lorg/w3c/dom/Document;

.field dom:Ljavax/xml/transform/dom/DOMSource;

.field result:Ljavax/xml/transform/stream/StreamResult;

.field stringWriter:Ljava/io/StringWriter;

.field tf:Ljavax/xml/transform/TransformerFactory;

.field transformer:Ljavax/xml/transform/Transformer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    .line 40
    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 41
    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 42
    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->tf:Ljavax/xml/transform/TransformerFactory;

    .line 43
    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->transformer:Ljavax/xml/transform/Transformer;

    .line 44
    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dom:Ljavax/xml/transform/dom/DOMSource;

    .line 45
    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->result:Ljavax/xml/transform/stream/StreamResult;

    .line 46
    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    .line 38
    return-void
.end method


# virtual methods
.method public createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;)V
    .locals 4
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    .prologue
    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getClientID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "ClientID"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 541
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getClientID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 543
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 545
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 546
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "AuthenticationCodeMAC"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 547
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 548
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 549
    move-object p1, v0

    .line 550
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "IterationCount"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 552
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 554
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 556
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 557
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "Mac"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 558
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 560
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 561
    const-string/jumbo v1, "MacAlgorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 564
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 565
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "Nonce"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 566
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 568
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 537
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_4
    return-void
.end method

.method public createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .locals 4
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .prologue
    .line 470
    const/4 v0, 0x0

    .line 472
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 473
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "AuthenticationData"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 474
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 475
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 476
    move-object p1, v0

    .line 477
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "IterationCount"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 479
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 481
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 483
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 484
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "Mac"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 485
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 487
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 488
    const-string/jumbo v1, "MacAlgorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_1
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 491
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 492
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "Nonce"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 493
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 495
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 469
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_3
    return-void
.end method

.method public createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;)V
    .locals 4
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    .prologue
    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getClientID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "ClientID"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 505
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getClientID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 507
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 509
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 510
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "AuthenticationCodeMAC"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 511
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 512
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 513
    move-object p1, v0

    .line 514
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "IterationCount"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 516
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 517
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 518
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 520
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 521
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "Mac"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 522
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 524
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 525
    const-string/jumbo v1, "MacAlgorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 528
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 529
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "Nonce"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 530
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 532
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 501
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_4
    return-void
.end method

.method public createDSKPPKeyContainer(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .locals 7
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "mKeyContainer"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    .param p3, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .prologue
    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 577
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v5, "EncryptionKey"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 578
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 580
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v5, "X509Data"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDS()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 581
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v5, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v6, "X509Certificate"

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDS()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 582
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->getX509Certificate()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 584
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getEncryptionKeyType()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 585
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v5, "KeyName"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDS()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 586
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getEncryptionKeyType()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 588
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getDerivedKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 589
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "http://www.w3.org/2009/xmlsec-derivedkey#"

    const-string/jumbo v5, "DerivedKey"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDkey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 590
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getDerivedKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createDerivedKey(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    .line 592
    :cond_2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 594
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 595
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v5, "MACMethod"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 596
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getShaAlgo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 598
    const-string/jumbo v3, "Algorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getShaAlgo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_4
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v5, "MACKey"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getCipherAlgo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 601
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v5, "EncryptionMethod"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 602
    .local v2, "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 603
    const-string/jumbo v3, "Algorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getCipherAlgo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 606
    .end local v2    # "temp":Lorg/w3c/dom/Element;
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getCipherData()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 607
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v5, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v6, "CipherData"

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 608
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v5, "CipherValue"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 609
    .restart local v2    # "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 610
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getCipherData()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 611
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 613
    .end local v2    # "temp":Lorg/w3c/dom/Element;
    :cond_6
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 615
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 616
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 617
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v5, "KeyPackage"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 618
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 619
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 620
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 621
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v5, "DeviceInfo"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 622
    .restart local v2    # "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {p0, v2, p3, v3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;)V

    .line 624
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 626
    .end local v2    # "temp":Lorg/w3c/dom/Element;
    :cond_8
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 627
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v5, "Key"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 628
    .restart local v2    # "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 629
    const-string/jumbo v4, "Id"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string/jumbo v4, "Algorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {p0, v2, p3, v3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createKey(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;)V

    .line 632
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 616
    .end local v2    # "temp":Lorg/w3c/dom/Element;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 574
    .end local v0    # "element":Lorg/w3c/dom/Element;
    .end local v1    # "i":I
    :cond_a
    return-void
.end method

.method public createDerivedKey(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .locals 5
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "dKey"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .param p3, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .prologue
    .line 771
    const/4 v0, 0x0

    .local v0, "element":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 772
    .local v1, "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->getKeyDerivationMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 773
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "http://www.w3.org/2009/xmlsec-derivedkey#"

    const-string/jumbo v4, "KeyDerivationMethod"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 774
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string/jumbo v2, "dKey"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->getKeyDerivationMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 776
    const-string/jumbo v2, "Algorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->getKeyDerivationMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->getKeyDerivationMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->getPBKDFParams()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 778
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "http://www.rsasecurity.com/rsalabs/pkcs/schemas/pkcs-5v2-0#"

    const-string/jumbo v4, "PBKDF2-Params"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 779
    .local v1, "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPkcs5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->getKeyDerivationMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->getPBKDFParams()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createPBKDFParams(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    .line 781
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 783
    .end local v1    # "temp":Lorg/w3c/dom/Element;
    :cond_1
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 770
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_2
    return-void
.end method

.method public createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;)V
    .locals 4
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "Manufacturer"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 381
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 383
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 385
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "SerialNo"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 387
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 389
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 391
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 392
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "Model"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 393
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 395
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 397
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 398
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "DeviceBinding"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 399
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 401
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 403
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 404
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "StartDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 405
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 407
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 409
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 410
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "ExpiryDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 411
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 413
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 415
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 416
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "UserId"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 417
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 419
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 377
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_6
    return-void
.end method

.method public createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;)V
    .locals 4
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .param p3, "mKeyPackage"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "Manufacturer"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 427
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 429
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 431
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "SerialNo"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 433
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 435
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 437
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_1
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 438
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "Model"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 439
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 441
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 443
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_2
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 444
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "DeviceBinding"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 445
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 447
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 449
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_3
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 450
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "StartDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 451
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 453
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 455
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_4
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 456
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "ExpiryDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 457
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 459
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 461
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_5
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 462
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "UserId"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 463
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 465
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 423
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_6
    return-void
.end method

.method public createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;)V
    .locals 4
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "Manufacturer"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 335
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 337
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 339
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "SerialNo"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 341
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 343
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 345
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "Model"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 347
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 349
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 351
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 352
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "DeviceBinding"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 353
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 355
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 357
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 358
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "StartDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 359
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 361
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 363
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 364
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "ExpiryDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 365
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 367
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 369
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 370
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "UserId"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 371
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 373
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 331
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_6
    return-void
.end method

.method public createKey(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;)V
    .locals 8
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .param p3, "mKey"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    .prologue
    .line 639
    const/4 v2, 0x0

    .line 640
    .local v2, "element":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 641
    .local v4, "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getIssuer()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 642
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "Issuer"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 643
    .local v2, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 644
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getIssuer()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 645
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 647
    .end local v2    # "element":Lorg/w3c/dom/Element;
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 648
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "AlgorithmParameters"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 650
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "Suite"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 651
    .restart local v2    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 652
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 653
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 655
    .end local v2    # "element":Lorg/w3c/dom/Element;
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "ResponseFormat"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 656
    .restart local v2    # "element":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "Length"

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getLength()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string/jumbo v5, "Encoding"

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v6

    .line 658
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getEncoding()I

    move-result v7

    .line 657
    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->encodingToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 660
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 662
    .end local v2    # "element":Lorg/w3c/dom/Element;
    :cond_2
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 663
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "Data"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v1

    .line 665
    .local v1, "data":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 666
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "Secret"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 667
    .restart local v2    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 669
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "EncryptedValue"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 670
    .local v4, "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 672
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v7, "EncryptionMethod"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 673
    .local v3, "encryptionAlgo":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 674
    const-string/jumbo v5, "Algorithm"

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 677
    .end local v3    # "encryptionAlgo":Lorg/w3c/dom/Element;
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getCipherData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 678
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v7, "CipherData"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 679
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v7, "CipherValue"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 680
    .local v0, "cipherValue":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 681
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getCipherData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->getCipherValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 682
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 684
    .end local v0    # "cipherValue":Lorg/w3c/dom/Element;
    :cond_4
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 687
    .end local v4    # "temp":Lorg/w3c/dom/Element;
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getValueMAC()[B

    move-result-object v5

    if-eqz v5, :cond_6

    .line 688
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "ValueMAC"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 689
    .restart local v4    # "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 690
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getValueMAC()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 691
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 693
    .end local v4    # "temp":Lorg/w3c/dom/Element;
    :cond_6
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 696
    .end local v2    # "element":Lorg/w3c/dom/Element;
    :cond_7
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "Counter"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 697
    .restart local v2    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 698
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "PlainValue"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 699
    .restart local v4    # "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 700
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getCounter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 701
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 702
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 704
    .end local v1    # "data":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;
    .end local v2    # "element":Lorg/w3c/dom/Element;
    .end local v4    # "temp":Lorg/w3c/dom/Element;
    :cond_8
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 705
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "Policy"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 706
    .restart local v2    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v5

    invoke-virtual {p0, v2, v5, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createPolicy(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    .line 708
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 638
    .end local v2    # "element":Lorg/w3c/dom/Element;
    :cond_9
    return-void
.end method

.method public createKeyProvClientHelloXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 125
    const/4 v3, 0x0

    .line 126
    .local v3, "element":Lorg/w3c/dom/Element;
    const/4 v7, 0x0

    .line 128
    .local v7, "xmlBuffer":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 129
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 130
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 131
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    .line 132
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-interface {v8, p2}, Lorg/w3c/dom/Document;->setXmlVersion(Ljava/lang/String;)V

    .line 134
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "KeyProvClientHello"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 135
    .local v5, "root":Lorg/w3c/dom/Element;
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-interface {v8, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 136
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 138
    const-string/jumbo v8, "http://www.w3.org/2000/xmlns/"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "xmlns:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "urn:ietf:params:xml:ns:keyprov:dskpp"

    invoke-interface {v5, v8, v9, v10}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 140
    const-string/jumbo v8, "http://www.w3.org/2000/xmlns/"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "xmlns:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "urn:ietf:params:xml:ns:keyprov:pskc"

    invoke-interface {v5, v8, v9, v10}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixXENC()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 142
    const-string/jumbo v8, "http://www.w3.org/2000/xmlns/"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "xmlns:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixXENC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "http://www.w3.org/2001/04/xmlenc#"

    invoke-interface {v5, v8, v9, v10}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDS()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 144
    const-string/jumbo v8, "http://www.w3.org/2000/xmlns/"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "xmlns:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDS()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "http://www.w3.org/2000/09/xmldsig#"

    invoke-interface {v5, v8, v9, v10}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPKCS5()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 146
    const-string/jumbo v8, "http://www.w3.org/2000/xmlns/"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "xmlns:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPKCS5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "http://www.rsasecurity.com/rsalabs/pkcs/schemas/pkcs-5v2-0#"

    invoke-interface {v5, v8, v9, v10}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_4
    const-string/jumbo v8, "Version"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 149
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "DeviceIdentifierData"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 150
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "DeviceId"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 151
    .local v3, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;)V

    .line 153
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 155
    .end local v3    # "element":Lorg/w3c/dom/Element;
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getKeyID()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 156
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "KeyID"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 157
    .restart local v3    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 158
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getKeyID()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 159
    invoke-interface {v5, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 161
    .end local v3    # "element":Lorg/w3c/dom/Element;
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyTypes()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 162
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "SupportedKeyTypes"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 163
    .restart local v3    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 164
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyTypes()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_8

    .line 165
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyTypes()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 166
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "Algorithm"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 167
    .local v6, "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 168
    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyTypes()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v9, v8}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 169
    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 164
    .end local v6    # "temp":Lorg/w3c/dom/Element;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    :cond_8
    invoke-interface {v5, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 174
    .end local v3    # "element":Lorg/w3c/dom/Element;
    .end local v4    # "i":I
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedEncryptionAlgorithms()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 175
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "SupportedEncryptionAlgorithms"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 176
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "Algorithm"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 177
    .restart local v3    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 178
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedEncryptionAlgorithms()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 179
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 181
    .end local v3    # "element":Lorg/w3c/dom/Element;
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedMacAlgorithms()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 182
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "SupportedMacAlgorithms"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 183
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "Algorithm"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 184
    .restart local v3    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 185
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedMacAlgorithms()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 186
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 188
    .end local v3    # "element":Lorg/w3c/dom/Element;
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 189
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "SupportedProtocolVariants"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 190
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getSupportedProtocolVariant()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 191
    .restart local v3    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 192
    const/4 v6, 0x0

    .line 193
    .local v6, "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getSupportedKeyProtectionMethod()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 194
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "SupportedKeyProtectionMethod"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 195
    .local v6, "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 196
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getSupportedKeyProtectionMethod()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 197
    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 199
    .end local v6    # "temp":Lorg/w3c/dom/Element;
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 200
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "Payload"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 201
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v10, "KeyInfo"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 202
    .restart local v6    # "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDS()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 203
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v10, "X509Data"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDS()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 204
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v10, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v11, "X509Certificate"

    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDS()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 205
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->getX509Certificate()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 206
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 208
    .end local v6    # "temp":Lorg/w3c/dom/Element;
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getKeyInfo()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 209
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "Payload"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 210
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v10, "KeyInfo"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 211
    .restart local v6    # "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDS()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 212
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v10, "KeyName"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDS()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 213
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getKeyInfo()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 214
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 216
    .end local v6    # "temp":Lorg/w3c/dom/Element;
    :cond_e
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 218
    .end local v3    # "element":Lorg/w3c/dom/Element;
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyPackageFormat()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 219
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "SupportedKeyPackages"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 220
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "KeyPackageFormat"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 221
    .restart local v3    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 222
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyPackageFormat()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 223
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 225
    .end local v3    # "element":Lorg/w3c/dom/Element;
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 226
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "AuthenticationData"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 227
    .restart local v3    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;)V

    .line 229
    invoke-interface {v5, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 231
    .end local v3    # "element":Lorg/w3c/dom/Element;
    :cond_11
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->tf:Ljavax/xml/transform/TransformerFactory;

    .line 232
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->tf:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v8}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->transformer:Ljavax/xml/transform/Transformer;

    .line 233
    new-instance v8, Ljavax/xml/transform/dom/DOMSource;

    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-direct {v8, v9}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dom:Ljavax/xml/transform/dom/DOMSource;

    .line 234
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    iput-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    .line 235
    new-instance v8, Ljavax/xml/transform/stream/StreamResult;

    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    invoke-direct {v8, v9}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    iput-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->result:Ljavax/xml/transform/stream/StreamResult;

    .line 236
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->transformer:Ljavax/xml/transform/Transformer;

    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dom:Ljavax/xml/transform/dom/DOMSource;

    iget-object v10, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->result:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v8, v9, v10}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 237
    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 248
    .local v7, "xmlBuffer":Ljava/lang/String;
    return-object v7

    .line 244
    .end local v5    # "root":Lorg/w3c/dom/Element;
    .local v7, "xmlBuffer":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Ljavax/xml/transform/TransformerException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "XMLCreator::createKeyProvClientHelloXML: unable to create it - Transformer Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 246
    return-object v12

    .line 241
    .end local v2    # "e":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v1

    .line 242
    .local v1, "e":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "XMLCreator::createKeyProvClientHelloXML: unable to create it - TransformerConfiguration Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 243
    return-object v12

    .line 238
    .end local v1    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v0

    .line 239
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "XMLCreator::createKeyProvClientHelloXML: unable to create it - ParserConfiguration Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 240
    return-object v12
.end method

.method public createKeyProvServerFinishedXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 252
    const/4 v3, 0x0

    .line 253
    .local v3, "element":Lorg/w3c/dom/Element;
    const/4 v6, 0x0

    .line 255
    .local v6, "xmlBuffer":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 256
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 257
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 258
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    .line 259
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-interface {v7, p2}, Lorg/w3c/dom/Document;->setXmlVersion(Ljava/lang/String;)V

    .line 261
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v9, "KeyProvServerFinished"

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 262
    .local v4, "root":Lorg/w3c/dom/Element;
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-interface {v7, v4}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 263
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 265
    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    invoke-interface {v4, v7, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 267
    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:pskc"

    invoke-interface {v4, v7, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 269
    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "http://www.w3.org/2001/04/xmlenc#"

    invoke-interface {v4, v7, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDS()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 271
    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDS()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "http://www.w3.org/2000/09/xmldsig#"

    invoke-interface {v4, v7, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDkey()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 273
    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDkey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "http://www.w3.org/2009/xmlsec-derivedkey#"

    invoke-interface {v4, v7, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPkcs5()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 275
    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPkcs5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "http://www.rsasecurity.com/rsalabs/pkcs/schemas/pkcs-5v2-0#"

    invoke-interface {v4, v7, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_5
    const-string/jumbo v7, "Version"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v7, "Status"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getStatus()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v7, "SessionID"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getSessionId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 280
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v9, "KeyPackage"

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 281
    .local v5, "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 282
    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 283
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getServerId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 284
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v9, "serverId"

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 285
    .local v3, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 286
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getServerId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 287
    invoke-interface {v5, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 289
    .end local v3    # "element":Lorg/w3c/dom/Element;
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 290
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v9, "KeyContainer"

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 291
    .restart local v3    # "element":Lorg/w3c/dom/Element;
    const-string/jumbo v7, "Version"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string/jumbo v7, "Id"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 294
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 295
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-result-object v7

    invoke-virtual {p0, v3, v7, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createDSKPPKeyContainer(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    .line 298
    .end local v3    # "element":Lorg/w3c/dom/Element;
    .end local v5    # "temp":Lorg/w3c/dom/Element;
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getMACType()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 299
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v9, "Mac"

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 300
    .restart local v3    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v7, "MacAlgorithm"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getMACType()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getMACType()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 303
    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 305
    .end local v3    # "element":Lorg/w3c/dom/Element;
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 306
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v9, "AuthenticationData"

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 307
    .restart local v3    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    .line 309
    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 311
    .end local v3    # "element":Lorg/w3c/dom/Element;
    :cond_9
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->tf:Ljavax/xml/transform/TransformerFactory;

    .line 312
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->tf:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v7}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->transformer:Ljavax/xml/transform/Transformer;

    .line 313
    new-instance v7, Ljavax/xml/transform/dom/DOMSource;

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-direct {v7, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dom:Ljavax/xml/transform/dom/DOMSource;

    .line 314
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    iput-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    .line 315
    new-instance v7, Ljavax/xml/transform/stream/StreamResult;

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    invoke-direct {v7, v8}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    iput-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->result:Ljavax/xml/transform/stream/StreamResult;

    .line 316
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->transformer:Ljavax/xml/transform/Transformer;

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dom:Ljavax/xml/transform/dom/DOMSource;

    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->result:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v7, v8, v9}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 317
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 328
    .local v6, "xmlBuffer":Ljava/lang/String;
    return-object v6

    .line 324
    .end local v4    # "root":Lorg/w3c/dom/Element;
    .local v6, "xmlBuffer":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 325
    .local v2, "e":Ljavax/xml/transform/TransformerException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "XMLCreator::createKeyProvServerFinishedXML: unable to create it - Transformer Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 326
    return-object v10

    .line 321
    .end local v2    # "e":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v1

    .line 322
    .local v1, "e":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "XMLCreator::createKeyProvServerFinishedXML: unable to create it - TransformerConfiguration Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 323
    return-object v10

    .line 318
    .end local v1    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v0

    .line 319
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "XMLCreator::createKeyProvServerFinishedXML: unable to create it - ParserConfiguration Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 320
    return-object v10
.end method

.method public createKeyProvTriggerXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    .local v3, "element":Lorg/w3c/dom/Element;
    const/4 v5, 0x0

    .line 52
    .local v5, "xmlBuffer":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 53
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 54
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 55
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    .line 56
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-interface {v6, p2}, Lorg/w3c/dom/Document;->setXmlVersion(Ljava/lang/String;)V

    .line 58
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "KeyProvTrigger"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 59
    .local v4, "root":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-interface {v6, v4}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 60
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 62
    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmlns:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    invoke-interface {v4, v6, v7, v8}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 64
    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmlns:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:pskc"

    invoke-interface {v4, v6, v7, v8}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    const-string/jumbo v6, "Version"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "InitializationTrigger"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 67
    .local v3, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 68
    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 69
    move-object v4, v3

    .line 70
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 71
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "DeviceIdentifierData"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 72
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "DeviceId"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 73
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;)V

    .line 75
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 77
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getKeyID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 78
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "KeyID"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 79
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 80
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getKeyID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 81
    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 83
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 84
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "TokenPlatformInfo"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 85
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->getKeyLocation()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 87
    const-string/jumbo v6, "KeyLocation"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->getKeyLocation()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->getAlgoLocation()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 89
    const-string/jumbo v6, "AlgorithmLocation"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->getAlgoLocation()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_5
    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 92
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 93
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "AuthenticationData"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 94
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;)V

    .line 96
    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 98
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getServerURL()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 99
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "ServerUrl"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 100
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 101
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getServerURL()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 102
    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 104
    :cond_8
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->tf:Ljavax/xml/transform/TransformerFactory;

    .line 105
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->tf:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->transformer:Ljavax/xml/transform/Transformer;

    .line 106
    new-instance v6, Ljavax/xml/transform/dom/DOMSource;

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-direct {v6, v7}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dom:Ljavax/xml/transform/dom/DOMSource;

    .line 107
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    iput-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    .line 108
    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    invoke-direct {v6, v7}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    iput-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->result:Ljavax/xml/transform/stream/StreamResult;

    .line 109
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->transformer:Ljavax/xml/transform/Transformer;

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dom:Ljavax/xml/transform/dom/DOMSource;

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->result:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v6, v7, v8}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 110
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 121
    .local v5, "xmlBuffer":Ljava/lang/String;
    return-object v5

    .line 117
    .end local v3    # "element":Lorg/w3c/dom/Element;
    .end local v4    # "root":Lorg/w3c/dom/Element;
    .local v5, "xmlBuffer":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljavax/xml/transform/TransformerException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "XMLCreator::createKeyProvTriggerXML: unable to create it - Transformer Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 119
    return-object v9

    .line 114
    .end local v2    # "e":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v1

    .line 115
    .local v1, "e":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "XMLCreator::createKeyProvTriggerXML: unable to create it - TransformerConfiguration Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 116
    return-object v9

    .line 111
    .end local v1    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v0

    .line 112
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "XMLCreator::CreateXML: unable to create it - ParserConfiguration Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 113
    return-object v9
.end method

.method public createPBKDFParams(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .locals 4
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "params"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .param p3, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .prologue
    .line 788
    const/4 v0, 0x0

    .local v0, "element":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 789
    .local v1, "temp":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getSalt()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 790
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "Salt"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 791
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "Specified"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 792
    .local v0, "element":Lorg/w3c/dom/Element;
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getSalt()[B

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->byteToStringSalt([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 793
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 795
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getIterationCount()I

    move-result v2

    if-eqz v2, :cond_1

    .line 796
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "IterationCount"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 797
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getIterationCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 798
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 800
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getKeyLength()I

    move-result v2

    if-eqz v2, :cond_2

    .line 801
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "KeyLength"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 802
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getKeyLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 803
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 787
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_2
    return-void
.end method

.method public createPinPolicy(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .locals 4
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "policy"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;
    .param p3, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .prologue
    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "element":Lorg/w3c/dom/Element;
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "PinPolicy"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 748
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 750
    const-string/jumbo v1, "PinEncoding"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinKeyID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 753
    const-string/jumbo v1, "PinKeyID"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinKeyID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinUsageMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 756
    const-string/jumbo v1, "PinUsageMode"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinUsageMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMaxFailedAttempts()I

    move-result v1

    if-eqz v1, :cond_3

    .line 759
    const-string/jumbo v1, "MaxFailedAttempts"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMaxFailedAttempts()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMaxLength()I

    move-result v1

    if-eqz v1, :cond_4

    .line 762
    const-string/jumbo v1, "MaxFailedAttempts"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMinLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMinLength()I

    move-result v1

    if-eqz v1, :cond_5

    .line 765
    const-string/jumbo v1, "MaxFailedAttempts"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMinLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :cond_5
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 745
    return-void
.end method

.method public createPolicy(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .locals 5
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "policy"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;
    .param p3, "obj"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .prologue
    .line 713
    const/4 v0, 0x0

    .line 714
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getStartDate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v4, "StartDate"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 716
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 717
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getStartDate()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 718
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 720
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getExpiryDate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 721
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v4, "ExpiryDate"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 722
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 723
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getExpiryDate()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 724
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 726
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getNoOfTransactions()I

    move-result v2

    if-eqz v2, :cond_2

    .line 727
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v4, "NumberOfTransactions"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 728
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 729
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getNoOfTransactions()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 730
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 732
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getKeyUsage()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 733
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getKeyUsage()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 734
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v4, "KeyUsage"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 735
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 736
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getKeyUsage()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 737
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 740
    .end local v0    # "element":Lorg/w3c/dom/Element;
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getPinPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 741
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getPinPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createPinPolicy(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    .line 712
    :cond_4
    return-void
.end method
