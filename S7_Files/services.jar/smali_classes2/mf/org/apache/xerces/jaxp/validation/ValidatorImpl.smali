.class final Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;
.super Lmf/javax/xml/validation/Validator;
.source "ValidatorImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/PSVIProvider;


# static fields
.field private static final CURRENT_ELEMENT_NODE:Ljava/lang/String; = "http://apache.org/xml/properties/dom/current-element-node"

.field private static final JAXP_SOURCE_RESULT_FEATURE_PREFIX:Ljava/lang/String; = "http://javax.xml.transform"


# instance fields
.field private final fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fConfigurationChanged:Z

.field private fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

.field private fErrorHandlerChanged:Z

.field private fResourceResolverChanged:Z

.field private fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

.field private fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

.field private fStreamValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Lmf/javax/xml/validation/Validator;-><init>()V

    .line 88
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    .line 91
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    .line 94
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    .line 97
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;-><init>(Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    .line 98
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 99
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    .line 100
    return-void
.end method


# virtual methods
.method public getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 328
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 332
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;

    move-result-object v0

    goto :goto_0
.end method

.method public getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 324
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;

    move-result-object v0

    goto :goto_0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 164
    if-eqz p1, :cond_0

    const-string/jumbo v0, "http://javax.xml.transform"

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :goto_0
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "FeatureNameNull"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "http://javax.xml.transform.stream.StreamSource/feature"

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    :cond_2
    return v4

    :cond_3
    const-string/jumbo v0, "http://javax.xml.transform.sax.SAXSource/feature"

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://javax.xml.transform.dom.DOMSource/feature"

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://javax.xml.transform.stax.StAXSource/feature"

    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://javax.xml.transform.stream.StreamResult/feature"

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://javax.xml.transform.sax.SAXResult/feature"

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://javax.xml.transform.dom.DOMResult/feature"

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://javax.xml.transform.stax.StAXResult/feature"

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    .line 193
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "feature-not-supported"

    .line 194
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 193
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    .line 188
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "feature-not-recognized"

    .line 189
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 188
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 240
    if-eqz p1, :cond_0

    const-string/jumbo v1, "http://apache.org/xml/properties/dom/current-element-node"

    .line 244
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 241
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "ProperyNameNull"

    invoke-static {v2, v3, v0}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    if-nez v1, :cond_2

    :goto_0
    return-object v0

    .line 246
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    .line 260
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "property-not-supported"

    .line 261
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 260
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    .line 255
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "property-not-recognized"

    .line 256
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 255
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 299
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    if-nez v0, :cond_0

    .line 308
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    if-nez v0, :cond_1

    .line 312
    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    if-nez v0, :cond_2

    .line 317
    :goto_1
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->restoreInitialState()V

    .line 301
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 302
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    .line 303
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    .line 304
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    .line 305
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    goto :goto_1

    .line 309
    :cond_1
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 310
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    .line 314
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    goto :goto_1
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1

    .prologue
    .line 145
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    .line 146
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 147
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 145
    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 201
    if-eqz p1, :cond_0

    const-string/jumbo v0, "http://javax.xml.transform"

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    :goto_0
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    iput-boolean v4, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    .line 236
    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "FeatureNameNull"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "http://javax.xml.transform.stream.StreamSource/feature"

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    .line 215
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "feature-read-only"

    .line 216
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    .line 215
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string/jumbo v0, "http://javax.xml.transform.sax.SAXSource/feature"

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://javax.xml.transform.dom.DOMSource/feature"

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://javax.xml.transform.stax.StAXSource/feature"

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://javax.xml.transform.stream.StreamResult/feature"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://javax.xml.transform.sax.SAXResult/feature"

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://javax.xml.transform.dom.DOMResult/feature"

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://javax.xml.transform.stax.StAXResult/feature"

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    .line 231
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "feature-not-supported"

    .line 232
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 231
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    .line 226
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "feature-not-recognized"

    .line 227
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 226
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 268
    if-eqz p1, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/properties/dom/current-element-node"

    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    iput-boolean v4, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    .line 294
    return-void

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "ProperyNameNull"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    .line 274
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "property-read-only"

    .line 275
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    .line 274
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :catch_0
    move-exception v0

    .line 281
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    .line 289
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "property-not-supported"

    .line 290
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 289
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    .line 284
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "property-not-recognized"

    .line 285
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 284
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V
    .locals 1

    .prologue
    .line 154
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    .line 155
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    .line 156
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 154
    goto :goto_0
.end method

.method public validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 104
    instance-of v0, p1, Lmf/javax/xml/transform/sax/SAXSource;

    if-nez v0, :cond_0

    .line 111
    instance-of v0, p1, Lmf/javax/xml/transform/dom/DOMSource;

    if-nez v0, :cond_2

    .line 118
    instance-of v0, p1, Lmf/javax/xml/transform/stax/StAXSource;

    if-nez v0, :cond_4

    .line 125
    instance-of v0, p1, Lmf/javax/xml/transform/stream/StreamSource;

    if-nez v0, :cond_6

    .line 133
    if-eqz p1, :cond_8

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "SourceNotAccepted"

    const/4 v3, 0x1

    .line 140
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 139
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-eqz v0, :cond_1

    .line 109
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V

    .line 142
    :goto_1
    return-void

    .line 107
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    if-eqz v0, :cond_3

    .line 116
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V

    goto :goto_1

    .line 114
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    goto :goto_2

    .line 120
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    if-eqz v0, :cond_5

    .line 123
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V

    goto :goto_1

    .line 121
    :cond_5
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    goto :goto_3

    .line 127
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;

    if-eqz v0, :cond_7

    .line 130
    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V

    goto :goto_1

    .line 128
    :cond_7
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;

    goto :goto_4

    .line 134
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "SourceParameterNull"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
