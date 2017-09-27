.class Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;
.super Ljava/lang/Object;
.source "DOMErrorHandlerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DOMErrorTypeMap"
.end annotation


# static fields
.field private static fgDOMErrorTypeTable:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 295
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    .line 296
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInCDSect"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInContent"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "TwoColonsInQName"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ColonNotLegalWithNS"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInProlog"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "CDEndInContent"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "CDSectUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "DoctypeNotAllowed"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "doctype-not-allowed"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ETagRequired"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ElementUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EqRequiredInAttribute"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "OpenQuoteExpected"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "CloseQuoteExpected"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ETagUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MarkupNotRecognizedInContent"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "DoctypeIllegalInContent"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "doctype-not-allowed"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInAttValue"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInPI"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInInternalSubset"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "QuoteRequiredInAttValue"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "LessthanInAttValue"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "AttributeValueUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "PITargetRequired"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "SpaceRequiredInPI"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "PIUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ReservedPITarget"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "PI_NOT_IN_ONE_ENTITY"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "PINotInOneEntity"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EncodingDeclInvalid"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "unsupported-encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EncodingByteOrderUnsupported"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "unsupported-encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInEntityValue"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInExternalSubset"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInIgnoreSect"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInPublicID"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInSystemID"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "SpaceRequiredAfterSYSTEM"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "QuoteRequiredInSystemID"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "SystemIDUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "SpaceRequiredAfterPUBLIC"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "QuoteRequiredInPublicID"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "PublicIDUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "PubidCharIllegal"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "SpaceRequiredBetweenPublicAndSystem"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_ROOT_ELEMENT_TYPE_IN_DOCTYPEDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_ROOT_ELEMENT_TYPE_REQUIRED"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "DoctypedeclUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "PEReferenceWithinMarkup"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ELEMENTDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_ELEMENT_TYPE_REQUIRED_IN_ELEMENTDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_CONTENTSPEC_IN_ELEMENTDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_CONTENTSPEC_REQUIRED_IN_ELEMENTDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ElementDeclUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_ELEMENT_TYPE_REQUIRED_IN_MIXED_CONTENT"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_CLOSE_PAREN_REQUIRED_IN_MIXED"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MixedContentUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ATTLISTDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_ELEMENT_TYPE_REQUIRED_IN_ATTLISTDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_ATTRIBUTE_NAME_IN_ATTDEF"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "AttNameRequiredInAttDef"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_ATTTYPE_IN_ATTDEF"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "AttTypeRequiredInAttDef"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_DEFAULTDECL_IN_ATTDEF"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_DUPLICATE_ATTRIBUTE_DEFINITION"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_AFTER_NOTATION_IN_NOTATIONTYPE"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_OPEN_PAREN_REQUIRED_IN_NOTATIONTYPE"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_NAME_REQUIRED_IN_NOTATIONTYPE"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "NotationTypeUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_NMTOKEN_REQUIRED_IN_ENUMERATION"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EnumerationUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_DISTINCT_TOKENS_IN_ENUMERATION"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_DISTINCT_NOTATION_IN_ENUMERATION"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_AFTER_FIXED_IN_DEFAULTDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "IncludeSectUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "IgnoreSectUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "NameRequiredInPEReference"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "SemicolonRequiredInPEReference"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_PERCENT_IN_PEDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_PEDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_ENTITY_NAME_REQUIRED_IN_ENTITYDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_UNPARSED_ENTITYDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_NDATA_IN_UNPARSED_ENTITYDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_NOTATION_NAME_REQUIRED_FOR_UNPARSED_ENTITYDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EntityDeclUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_DUPLICATE_ENTITY_DEFINITION"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ExternalIDRequired"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_PUBIDLITERAL_IN_EXTERNALID"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_AFTER_PUBIDLITERAL_IN_EXTERNALID"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_SYSTEMLITERAL_IN_EXTERNALID"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_URI_FRAGMENT_IN_SYSTEMID"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_NOTATIONDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_NOTATION_NAME_REQUIRED_IN_NOTATIONDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_AFTER_NOTATION_NAME_IN_NOTATIONDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ExternalIDorPublicIDRequired"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "NotationDeclUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ReferenceToExternalEntity"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ReferenceToUnparsedEntity"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EncodingNotSupported"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "unsupported-encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EncodingRequired"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "unsupported-encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "IllegalQName"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ElementXMLNSPrefix"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ElementPrefixUnbound"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "AttributePrefixUnbound"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EmptyPrefixedAttName"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "PrefixDeclared"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDOMErrorType(Lmf/org/apache/xerces/util/XMLErrorCode;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
