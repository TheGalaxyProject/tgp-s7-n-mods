.class public Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
.super Ljava/lang/Object;
.source "DTDGrammar.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLDTDHandler;
.implements Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
.implements Lmf/org/apache/xerces/impl/validation/EntityState;
.implements Lmf/org/apache/xerces/xni/grammars/Grammar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;,
        Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;
    }
.end annotation


# static fields
.field private static final CHUNK_MASK:I = 0xff

.field private static final CHUNK_SHIFT:I = 0x8

.field private static final CHUNK_SIZE:I = 0x100

.field private static final DEBUG:Z = false

.field private static final INITIAL_CHUNK_COUNT:I = 0x4

.field private static final LIST_FLAG:S = 0x80s

.field private static final LIST_MASK:S = -0x81s

.field public static final TOP_LEVEL_SCOPE:I = -0x1


# instance fields
.field protected final fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

.field private fAttributeDeclCount:I

.field private fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field private fAttributeDeclDefaultType:[[S

.field private fAttributeDeclDefaultValue:[[Ljava/lang/String;

.field private fAttributeDeclEnumeration:[[[Ljava/lang/String;

.field private fAttributeDeclIsExternal:[[I

.field private fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

.field private fAttributeDeclNextAttributeDeclIndex:[[I

.field private fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

.field private fAttributeDeclType:[[S

.field private fContentSpec:Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

.field private fContentSpecCount:I

.field private fContentSpecOtherValue:[[Ljava/lang/Object;

.field private fContentSpecType:[[S

.field private fContentSpecValue:[[Ljava/lang/Object;

.field protected fCurrentAttributeIndex:I

.field protected fCurrentElementIndex:I

.field protected fDTDContentModelSource:Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;

.field protected fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

.field private fDepth:I

.field private fElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

.field private fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

.field private fElementDeclContentSpecIndex:[[I

.field private fElementDeclCount:I

.field private fElementDeclFirstAttributeDeclIndex:[[I

.field private fElementDeclIsExternal:[[I

.field private fElementDeclLastAttributeDeclIndex:[[I

.field private fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

.field fElementDeclTab:Ljava/util/Hashtable;

.field private fElementDeclType:[[S

.field private fElementIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

.field private fEntityBaseSystemId:[[Ljava/lang/String;

.field private fEntityCount:I

.field private fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

.field private fEntityInExternal:[[B

.field private fEntityIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

.field private fEntityIsPE:[[B

.field private fEntityName:[[Ljava/lang/String;

.field private fEntityNotation:[[Ljava/lang/String;

.field private fEntityPublicId:[[Ljava/lang/String;

.field private fEntitySystemId:[[Ljava/lang/String;

.field private fEntityValue:[[Ljava/lang/String;

.field private fEpsilonIndex:I

.field protected fGrammarDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

.field private fIsImmutable:Z

.field private fLeafCount:I

.field private fMixed:Z

.field private fNodeIndexStack:[I

.field private fNotationBaseSystemId:[[Ljava/lang/String;

.field private fNotationCount:I

.field private fNotationIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

.field private fNotationName:[[Ljava/lang/String;

.field private fNotationPublicId:[[Ljava/lang/String;

.field private fNotationSystemId:[[Ljava/lang/String;

.field private fOpStack:[S

.field private fPEDepth:I

.field private fPEntityStack:[Z

.field private fPrevNodeIndexStack:[I

.field private final fQName:Lmf/org/apache/xerces/xni/QName;

.field private final fQName2:Lmf/org/apache/xerces/xni/QName;

.field protected fReadingExternalDTD:Z

.field private fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field nodeIndex:I

.field prevNodeIndex:I

.field valueIndex:I


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    .line 103
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDTDContentModelSource:Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;

    .line 112
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    .line 118
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    .line 123
    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    .line 126
    new-array v0, v1, [[Lmf/org/apache/xerces/xni/QName;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    .line 132
    new-array v0, v1, [[S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    .line 138
    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    .line 144
    new-array v0, v1, [[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    .line 147
    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    .line 150
    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    .line 155
    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    .line 158
    new-array v0, v1, [[Lmf/org/apache/xerces/xni/QName;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    .line 161
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fIsImmutable:Z

    .line 167
    new-array v0, v1, [[S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    .line 170
    new-array v0, v1, [[[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    .line 171
    new-array v0, v1, [[S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    .line 172
    new-array v0, v1, [[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 173
    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    .line 174
    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    .line 175
    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    .line 183
    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecCount:I

    .line 184
    new-array v0, v1, [[S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    .line 185
    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    .line 186
    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    .line 190
    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityCount:I

    .line 191
    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    .line 192
    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    .line 193
    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    .line 194
    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    .line 195
    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    .line 196
    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    .line 197
    new-array v0, v1, [[B

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    .line 198
    new-array v0, v1, [[B

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    .line 202
    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationCount:I

    .line 203
    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    .line 204
    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    .line 205
    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    .line 206
    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    .line 211
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    .line 214
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    .line 217
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    .line 225
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    .line 228
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName2:Lmf/org/apache/xerces/xni/QName;

    .line 231
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    .line 235
    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    .line 236
    iput v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEpsilonIndex:I

    .line 239
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    .line 242
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    .line 245
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    .line 248
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpec:Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    .line 251
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    .line 254
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    .line 257
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    .line 260
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    .line 263
    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    .line 266
    new-array v0, v1, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    .line 267
    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    .line 272
    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    .line 278
    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    .line 282
    iput v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->valueIndex:I

    .line 283
    iput v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->prevNodeIndex:I

    .line 284
    iput v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->nodeIndex:I

    .line 292
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 293
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    .line 294
    return-void
.end method

.method private appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V
    .locals 7

    .prologue
    const/16 v6, 0x29

    const/16 v4, 0x28

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2044
    iget-short v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v3, v0, 0xf

    .line 2045
    packed-switch v3, :pswitch_data_0

    const-string/jumbo v0, "???"

    .line 2150
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2156
    :cond_0
    :goto_0
    return-void

    .line 2047
    :pswitch_0
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 2050
    :cond_1
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 2053
    :cond_2
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 2057
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2047
    :cond_3
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string/jumbo v0, "#PCDATA"

    .line 2048
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2050
    :cond_4
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "##any:uri="

    .line 2051
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "##any"

    .line 2054
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    .line 2062
    if-ne p4, v0, :cond_7

    .line 2065
    :cond_6
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 2066
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2067
    invoke-direct {p0, p1, p2, v2, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    .line 2068
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2074
    :goto_1
    const/16 v0, 0x3f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_7
    const/4 v0, 0x2

    .line 2063
    if-eq p4, v0, :cond_6

    .line 2064
    if-eq p4, v2, :cond_6

    .line 2071
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 2072
    invoke-direct {p0, p1, p2, v2, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x3

    .line 2078
    if-ne p4, v0, :cond_9

    .line 2081
    :cond_8
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 2082
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2083
    invoke-direct {p0, p1, p2, v2, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    .line 2084
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2090
    :goto_2
    const/16 v0, 0x2a

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_9
    const/4 v0, 0x2

    .line 2079
    if-eq p4, v0, :cond_8

    .line 2080
    if-eq p4, v2, :cond_8

    .line 2087
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 2088
    invoke-direct {p0, p1, p2, v2, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x3

    .line 2094
    if-ne p4, v0, :cond_b

    .line 2098
    :cond_a
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2099
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 2100
    invoke-direct {p0, p1, p2, v2, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    .line 2101
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2107
    :goto_3
    const/16 v0, 0x2b

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x2

    .line 2095
    if-eq p4, v0, :cond_a

    .line 2096
    if-eq p4, v2, :cond_a

    .line 2104
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 2105
    invoke-direct {p0, p1, p2, v2, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_3

    .line 2112
    :pswitch_4
    if-nez p3, :cond_c

    .line 2115
    :goto_4
    iget-short v4, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    .line 2116
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v0, [I

    aget v5, v0, v1

    .line 2117
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 2118
    iget-short v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-ne v0, v4, :cond_d

    move v0, v1

    :goto_5
    invoke-direct {p0, p1, p2, v0, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    const/4 v0, 0x4

    .line 2119
    if-eq v4, v0, :cond_e

    .line 2123
    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2125
    :goto_6
    invoke-virtual {p0, v5, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 2126
    invoke-direct {p0, p1, p2, v2, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    .line 2127
    if-eqz p3, :cond_0

    .line 2128
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 2113
    :cond_c
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_d
    move v0, v2

    .line 2118
    goto :goto_5

    .line 2120
    :cond_e
    const/16 v0, 0x7c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :pswitch_5
    const-string/jumbo v0, "##any"

    .line 2133
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2134
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ":uri="

    .line 2135
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2136
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v0, "##other:uri="

    .line 2141
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2142
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v0, "##local"

    .line 2146
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 2045
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private final buildSyntaxTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 2282
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 2283
    iget-short v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 2287
    iget-short v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    .line 2290
    iget-short v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 2297
    iget-short v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-eqz v0, :cond_4

    .line 2312
    iget-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, [I

    aget v1, v0, v2

    .line 2313
    iget-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v0, [I

    aget v2, v0, v2

    .line 2315
    iget-short v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    .line 2323
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    invoke-direct {p0, v1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->buildSyntaxTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v1

    .line 2324
    invoke-direct {p0, v2, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->buildSyntaxTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    .line 2323
    invoke-direct {v0, v3, v1, v2}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 2339
    :goto_0
    return-object v0

    .line 2285
    :cond_1
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/models/CMAny;

    iget-short v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    invoke-direct {v1, v2, v0, v3}, Lmf/org/apache/xerces/impl/dtd/models/CMAny;-><init>(ILjava/lang/String;I)V

    move-object v0, v1

    .line 2286
    goto :goto_0

    .line 2288
    :cond_2
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/models/CMAny;

    iget-short v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    invoke-direct {v1, v2, v0, v3}, Lmf/org/apache/xerces/impl/dtd/models/CMAny;-><init>(ILjava/lang/String;I)V

    move-object v0, v1

    .line 2289
    goto :goto_0

    .line 2291
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;

    iget-short v1, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    invoke-direct {v0, v1, v4, v2}, Lmf/org/apache/xerces/impl/dtd/models/CMAny;-><init>(ILjava/lang/String;I)V

    goto :goto_0

    .line 2304
    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2305
    iget-object v1, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 2304
    invoke-virtual {v3, v4, v0, v1, v2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;-><init>(Lmf/org/apache/xerces/xni/QName;I)V

    goto :goto_0

    .line 2316
    :cond_5
    iget-short v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 2326
    iget-short v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-eq v0, v5, :cond_7

    .line 2329
    iget-short v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-ne v0, v5, :cond_8

    .line 2332
    :cond_6
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;

    iget-short v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    invoke-direct {p0, v1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->buildSyntaxTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto :goto_0

    .line 2327
    :cond_7
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;

    iget-short v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    invoke-direct {p0, v1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->buildSyntaxTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto :goto_0

    .line 2330
    :cond_8
    iget-short v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    .line 2331
    iget-short v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    .line 2335
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ImplementationMessages.VAL_CST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private contentSpecTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;)V
    .locals 7

    .prologue
    const/4 v0, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 2357
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 2358
    iget-short v1, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-nez v1, :cond_1

    .line 2364
    :cond_0
    iget v0, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    iget-object v1, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->qname:[Lmf/org/apache/xerces/xni/QName;

    array-length v1, v1

    if-eq v0, v1, :cond_2

    .line 2374
    :goto_0
    iget-object v3, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->qname:[Lmf/org/apache/xerces/xni/QName;

    iget v4, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    new-instance v5, Lmf/org/apache/xerces/xni/QName;

    iget-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2375
    iget-object v1, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2376
    iget-object v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v5, v6, v0, v1, v2}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    aput-object v5, v3, v4

    .line 2377
    iget-object v0, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->type:[I

    iget v1, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    iget-short v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    aput v2, v0, v1

    .line 2378
    iget v0, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    .line 2379
    return-void

    .line 2359
    :cond_1
    iget-short v1, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 2360
    iget-short v1, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v1, v1, 0xf

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 2361
    iget-short v1, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 2386
    iget-object v1, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez v1, :cond_3

    :goto_1
    move v1, v0

    .line 2389
    iget-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 2392
    return-void

    .line 2365
    :cond_2
    iget v0, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lmf/org/apache/xerces/xni/QName;

    .line 2366
    iget-object v1, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->qname:[Lmf/org/apache/xerces/xni/QName;

    iget v2, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2367
    iput-object v0, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->qname:[Lmf/org/apache/xerces/xni/QName;

    .line 2368
    iget v0, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 2369
    iget-object v1, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->type:[I

    iget v2, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2370
    iput-object v0, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->type:[I

    goto :goto_0

    .line 2387
    :cond_3
    iget-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v3

    goto :goto_1

    .line 2390
    :cond_4
    iget-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v3

    .line 2394
    iget-short v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 2396
    :cond_5
    invoke-direct {p0, v1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->contentSpecTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;)V

    .line 2397
    invoke-direct {p0, v0, p2, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->contentSpecTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;)V

    .line 2398
    return-void

    .line 2395
    :cond_6
    iget-short v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    .line 2401
    iget-short v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 2404
    :cond_7
    invoke-direct {p0, v1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->contentSpecTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;)V

    .line 2405
    return-void

    .line 2402
    :cond_8
    iget-short v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    .line 2403
    iget-short v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    .line 2409
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid content spec type seen in contentSpecTree() method of AbstractDTDGrammar class : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized createChildModel(I)Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;
    .locals 7

    .prologue
    monitor-enter p0

    .line 2186
    :try_start_0
    new-instance v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    .line 2187
    invoke-virtual {p0, p1, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 2189
    iget-short v0, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2267
    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    const/4 v0, 0x0

    .line 2269
    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    .line 2270
    invoke-direct {p0, p1, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->buildSyntaxTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 2273
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;-><init>(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 2190
    :cond_1
    :try_start_1
    iget-short v0, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 2191
    iget-short v0, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2195
    iget-short v0, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-eqz v0, :cond_3

    .line 2212
    iget-short v0, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 2218
    :cond_2
    new-instance v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    .line 2219
    new-instance v4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    .line 2221
    iget-object v0, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 2222
    iget-object v0, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 2224
    iget-short v0, v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-nez v0, :cond_0

    .line 2225
    iget-short v0, v4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-nez v0, :cond_0

    .line 2230
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2231
    iget-object v1, v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v6, 0x0

    .line 2230
    invoke-virtual {v5, v6, v0, v1, v2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName2:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2233
    iget-object v1, v4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    .line 2232
    invoke-virtual {v5, v4, v0, v1, v2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;

    iget-short v1, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName2:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;-><init>(SLmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2200
    :cond_3
    :try_start_2
    iget-object v0, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 2209
    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2210
    iget-object v1, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x0

    .line 2209
    invoke-virtual {v4, v5, v0, v1, v2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;

    iget-short v1, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;-><init>(SLmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2200
    :cond_5
    :try_start_3
    iget-object v0, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 2201
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ImplementationMessages.VAL_NPCD"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2213
    :cond_6
    :try_start_4
    iget-short v0, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 2236
    iget-short v0, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2244
    :cond_7
    new-instance v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    .line 2245
    iget-object v0, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 2247
    iget-short v0, v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-nez v0, :cond_0

    .line 2253
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2254
    iget-object v1, v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x0

    .line 2253
    invoke-virtual {v4, v5, v0, v1, v2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;

    iget-short v1, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;-><init>(SLmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2237
    :cond_8
    :try_start_5
    iget-short v0, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 2238
    iget-short v0, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    .line 2258
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ImplementationMessages.VAL_CST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private ensureAttributeDeclCapacity(I)V
    .locals 3

    .prologue
    const/16 v2, 0x100

    .line 2443
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 2455
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 2459
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    new-array v1, v2, [I

    aput-object v1, v0, p1

    .line 2460
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    new-array v1, v2, [Lmf/org/apache/xerces/xni/QName;

    aput-object v1, v0, p1

    .line 2461
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    new-array v1, v2, [S

    aput-object v1, v0, p1

    .line 2462
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    new-array v1, v2, [[Ljava/lang/String;

    aput-object v1, v0, p1

    .line 2463
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    new-array v1, v2, [S

    aput-object v1, v0, p1

    .line 2464
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    new-array v1, v2, [Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    aput-object v1, v0, p1

    .line 2465
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    .line 2466
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    .line 2467
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    new-array v1, v2, [I

    aput-object v1, v0, p1

    .line 2468
    return-void

    .line 2444
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    .line 2445
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 2444
    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    .line 2446
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Lmf/org/apache/xerces/xni/QName;I)[[Lmf/org/apache/xerces/xni/QName;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    .line 2447
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    .line 2448
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[[Ljava/lang/String;I)[[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    .line 2449
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    .line 2450
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;I)[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 2451
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    .line 2452
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    .line 2453
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    goto/16 :goto_0

    .line 2456
    :cond_1
    return-void
.end method

.method private ensureContentSpecCapacity(I)V
    .locals 3

    .prologue
    const/16 v2, 0x100

    .line 2516
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 2521
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 2525
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    new-array v1, v2, [S

    aput-object v1, v0, p1

    .line 2526
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 2527
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 2528
    return-void

    .line 2517
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    .line 2518
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/Object;I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    .line 2519
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/Object;I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    goto :goto_0

    .line 2522
    :cond_1
    return-void
.end method

.method private ensureElementDeclCapacity(I)V
    .locals 3

    .prologue
    const/16 v2, 0x100

    .line 2416
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 2427
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 2431
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    new-array v1, v2, [I

    aput-object v1, v0, p1

    .line 2432
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    new-array v1, v2, [Lmf/org/apache/xerces/xni/QName;

    aput-object v1, v0, p1

    .line 2433
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    new-array v1, v2, [S

    aput-object v1, v0, p1

    .line 2434
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    new-array v1, v2, [Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    aput-object v1, v0, p1

    .line 2435
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    new-array v1, v2, [I

    aput-object v1, v0, p1

    .line 2436
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    new-array v1, v2, [I

    aput-object v1, v0, p1

    .line 2437
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    new-array v1, v2, [I

    aput-object v1, v0, p1

    .line 2438
    return-void

    .line 2417
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    .line 2418
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 2417
    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    .line 2420
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Lmf/org/apache/xerces/xni/QName;I)[[Lmf/org/apache/xerces/xni/QName;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    .line 2421
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    .line 2422
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;I)[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    .line 2423
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    .line 2424
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    .line 2425
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    goto/16 :goto_0

    .line 2428
    :cond_1
    return-void
.end method

.method private ensureEntityDeclCapacity(I)V
    .locals 3

    .prologue
    const/16 v2, 0x100

    .line 2472
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 2482
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 2486
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    .line 2487
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    .line 2488
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    .line 2489
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    .line 2490
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    .line 2491
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    .line 2492
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    new-array v1, v2, [B

    aput-object v1, v0, p1

    .line 2493
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    new-array v1, v2, [B

    aput-object v1, v0, p1

    .line 2494
    return-void

    .line 2473
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    .line 2474
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    .line 2475
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    .line 2476
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    .line 2477
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    .line 2478
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    .line 2479
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[BI)[[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    .line 2480
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[BI)[[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    goto/16 :goto_0

    .line 2483
    :cond_1
    return-void
.end method

.method private ensureNotationDeclCapacity(I)V
    .locals 3

    .prologue
    const/16 v2, 0x100

    .line 2498
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 2504
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 2508
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    .line 2509
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    .line 2510
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    .line 2511
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    .line 2512
    return-void

    .line 2499
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    .line 2500
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    .line 2501
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    .line 2502
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    goto :goto_0

    .line 2505
    :cond_1
    return-void
.end method

.method private printAttribute(I)V
    .locals 3

    .prologue
    .line 2162
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;-><init>()V

    .line 2163
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2169
    :goto_0
    return-void

    .line 2164
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, " { "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 2165
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 2166
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static resize([[BI)[[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2538
    new-array v0, p1, [[B

    .line 2539
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2540
    return-object v0
.end method

.method private static resize([[II)[[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2550
    new-array v0, p1, [[I

    .line 2551
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2552
    return-object v0
.end method

.method private static resize([[Ljava/lang/Object;I)[[Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2568
    new-array v0, p1, [[Ljava/lang/Object;

    .line 2569
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2570
    return-object v0
.end method

.method private static resize([[Ljava/lang/String;I)[[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2580
    new-array v0, p1, [[Ljava/lang/String;

    .line 2581
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2582
    return-object v0
.end method

.method private static resize([[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;I)[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2562
    new-array v0, p1, [[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    .line 2563
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2564
    return-object v0
.end method

.method private static resize([[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;I)[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2556
    new-array v0, p1, [[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 2557
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2558
    return-object v0
.end method

.method private static resize([[Lmf/org/apache/xerces/xni/QName;I)[[Lmf/org/apache/xerces/xni/QName;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2574
    new-array v0, p1, [[Lmf/org/apache/xerces/xni/QName;

    .line 2575
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2576
    return-object v0
.end method

.method private static resize([[SI)[[S
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2544
    new-array v0, p1, [[S

    .line 2545
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2546
    return-object v0
.end method

.method private static resize([[[Ljava/lang/String;I)[[[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2586
    new-array v0, p1, [[[Ljava/lang/String;

    .line 2587
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2588
    return-object v0
.end method


# virtual methods
.method protected addContentSpecNode(SII)I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1992
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createContentSpec()I

    move-result v0

    .line 1995
    new-array v1, v2, [I

    .line 1996
    new-array v2, v2, [I

    .line 1998
    aput p2, v1, v3

    .line 1999
    aput p3, v2, v3

    .line 2000
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpec:Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-virtual {v3, p1, v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->setValues(SLjava/lang/Object;Ljava/lang/Object;)V

    .line 2001
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpec:Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V

    .line 2004
    return v0
.end method

.method protected addContentSpecNode(SLjava/lang/String;)I
    .locals 3

    .prologue
    .line 1948
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createContentSpec()I

    move-result v0

    .line 1951
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpec:Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->setValues(SLjava/lang/Object;Ljava/lang/Object;)V

    .line 1952
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpec:Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V

    .line 1955
    return v0
.end method

.method protected addContentSpecToElement(Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 1667
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    if-nez v0, :cond_2

    .line 1668
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    if-nez v0, :cond_3

    .line 1681
    :cond_1
    :goto_0
    return-void

    .line 1667
    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-short v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1669
    :cond_3
    iget-short v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-eq v0, v2, :cond_4

    .line 1679
    :goto_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setContentSpecIndex(II)V

    goto :goto_0

    .line 1670
    :cond_4
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result v0

    .line 1671
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    aget v1, v1, v4

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 1675
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    .line 1676
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    aget v2, v2, v4

    .line 1675
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v0, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result v0

    aput v0, v1, v4

    goto :goto_1

    .line 1672
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    aput v0, v1, v4

    goto :goto_1
.end method

.method protected addUniqueLeafNode(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 1968
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createContentSpec()I

    move-result v0

    .line 1971
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpec:Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->setValues(SLjava/lang/Object;Ljava/lang/Object;)V

    .line 1973
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpec:Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V

    .line 1976
    return v0
.end method

.method public any(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1109
    return-void
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 566
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 587
    :goto_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v4

    .line 591
    invoke-virtual {p0, v4, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDeclIndex(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 595
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createAttributeDecl()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentAttributeIndex:I

    .line 597
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->clear()V

    .line 598
    if-nez p5, :cond_5

    .line 610
    :cond_0
    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    if-nez p6, :cond_8

    move-object v0, v1

    :goto_2
    iput-object v0, v5, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    .line 611
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    if-nez p7, :cond_9

    move-object v0, v1

    :goto_3
    iput-object v0, v5, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-object p4, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    const-string/jumbo v0, "CDATA"

    .line 614
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "ID"

    .line 617
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "IDREF"

    .line 620
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "ENTITIES"

    .line 626
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "ENTITY"

    .line 630
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "NMTOKENS"

    .line 633
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "NMTOKEN"

    .line 637
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "NOTATION"

    .line 640
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "ENUMERATION"

    .line 643
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 648
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "!!! unknown attribute type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 654
    :cond_1
    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1, p2, p2, v1}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-virtual {v0, v1, v5, v2}, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->setValues(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;Z)V

    .line 657
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentAttributeIndex:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {p0, v4, v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setAttributeDecl(IILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)V

    .line 659
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentAttributeIndex:I

    shr-int/lit8 v0, v0, 0x8

    .line 660
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentAttributeIndex:I

    and-int/lit16 v1, v1, 0xff

    .line 661
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->ensureAttributeDeclCapacity(I)V

    .line 662
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    aget-object v4, v4, v0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    if-eqz v0, :cond_13

    :cond_2
    move v0, v3

    :goto_5
    aput v0, v4, v1

    .line 664
    return-void

    .line 572
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createElementDecl()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    .line 574
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    .line 575
    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v4, v1, p1, p1, v1}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iput v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->scope:I

    .line 580
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {v4, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    invoke-virtual {p0, v4, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)V

    goto/16 :goto_0

    .line 592
    :cond_4
    return-void

    :cond_5
    const-string/jumbo v0, "#FIXED"

    .line 599
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "#IMPLIED"

    .line 601
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "#REQUIRED"

    .line 603
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short v6, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    goto/16 :goto_1

    .line 600
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short v3, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    goto/16 :goto_1

    .line 602
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    goto/16 :goto_1

    .line 610
    :cond_8
    invoke-virtual {p6}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 611
    :cond_9
    invoke-virtual {p7}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 615
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto/16 :goto_4

    .line 618
    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x3

    iput-short v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto/16 :goto_4

    .line 621
    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x4

    iput-short v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    const-string/jumbo v0, "S"

    .line 622
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 623
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    goto/16 :goto_4

    .line 627
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short v3, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    .line 628
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    goto/16 :goto_4

    .line 631
    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short v3, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto/16 :goto_4

    .line 634
    :cond_f
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x5

    iput-short v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    .line 635
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    goto/16 :goto_4

    .line 638
    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x5

    iput-short v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto/16 :goto_4

    .line 641
    :cond_11
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x6

    iput-short v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto/16 :goto_4

    .line 644
    :cond_12
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short v6, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto/16 :goto_4

    .line 662
    :cond_13
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    if-gtz v0, :cond_2

    move v0, v2

    goto/16 :goto_5
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 847
    return-void
.end method

.method protected createAttributeDecl()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1814
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    shr-int/lit8 v0, v0, 0x8

    .line 1815
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    and-int/lit16 v1, v1, 0xff

    .line 1817
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->ensureAttributeDeclCapacity(I)V

    .line 1818
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v2, v2, v0

    new-instance v3, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v3}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v3, v2, v1

    .line 1819
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v2, v2, v0

    aput-short v5, v2, v1

    .line 1820
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    aget-object v2, v2, v0

    aput-object v4, v2, v1

    .line 1821
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v4, v2, v1

    .line 1822
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-short v3, v2, v1

    .line 1823
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v4, v2, v1

    .line 1824
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v4, v2, v1

    .line 1825
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v0, v2, v0

    aput v5, v0, v1

    .line 1826
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    return v0
.end method

.method protected createContentSpec()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1872
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecCount:I

    shr-int/lit8 v0, v0, 0x8

    .line 1873
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecCount:I

    and-int/lit16 v1, v1, 0xff

    .line 1875
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->ensureContentSpecCapacity(I)V

    .line 1876
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    aget-object v2, v2, v0

    const/4 v3, -0x1

    aput-short v3, v2, v1

    .line 1877
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v4, v2, v1

    .line 1878
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    aget-object v0, v2, v0

    aput-object v4, v0, v1

    .line 1880
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecCount:I

    return v0
.end method

.method protected createElementDecl()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1751
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    shr-int/lit8 v0, v0, 0x8

    .line 1752
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    and-int/lit16 v1, v1, 0xff

    .line 1753
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->ensureElementDeclCapacity(I)V

    .line 1754
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v2, v2, v0

    new-instance v3, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v3}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v3, v2, v1

    .line 1755
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v2, v2, v0

    aput-short v4, v2, v1

    .line 1756
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 1757
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v2, v2, v0

    aput v4, v2, v1

    .line 1758
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    aget-object v0, v2, v0

    aput v4, v0, v1

    .line 1759
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    return v0
.end method

.method protected createEntityDecl()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1894
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityCount:I

    shr-int/lit8 v0, v0, 0x8

    .line 1895
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityCount:I

    and-int/lit16 v1, v1, 0xff

    .line 1897
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->ensureEntityDeclCapacity(I)V

    .line 1898
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    aget-object v2, v2, v0

    aput-byte v3, v2, v1

    .line 1899
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    aget-object v0, v2, v0

    aput-byte v3, v0, v1

    .line 1901
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityCount:I

    return v0
.end method

.method protected createNotationDecl()I
    .locals 2

    .prologue
    .line 1921
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationCount:I

    shr-int/lit8 v0, v0, 0x8

    .line 1922
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->ensureNotationDeclCapacity(I)V

    .line 1923
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationCount:I

    return v0
.end method

.method public element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1003
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fMixed:Z

    if-nez v0, :cond_0

    .line 1014
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    invoke-virtual {p0, v2, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SLjava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 1016
    :goto_0
    return-void

    .line 1004
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1008
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    .line 1009
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v2, v2, v3

    .line 1010
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result v3

    .line 1008
    const/4 v4, 0x4

    invoke-virtual {p0, v4, v2, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v0, v1

    goto :goto_0

    .line 1005
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 476
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    .line 479
    if-nez v0, :cond_1

    .line 489
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createElementDecl()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    .line 492
    :goto_0
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    .line 494
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, v5, p1, p1, v5}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v3, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 498
    iput-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    .line 499
    iput v6, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->scope:I

    const-string/jumbo v3, "EMPTY"

    .line 500
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "ANY"

    .line 503
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "("

    .line 506
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 517
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {v3, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    .line 520
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecToElement(Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;)V

    .line 527
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)V

    .line 529
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    shr-int/lit8 v0, v0, 0x8

    .line 530
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    and-int/lit16 v3, v3, 0xff

    .line 531
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->ensureElementDeclCapacity(I)V

    .line 532
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    aget-object v4, v4, v0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    if-eqz v0, :cond_7

    :cond_0
    move v0, v2

    :goto_2
    aput v0, v4, v3

    .line 534
    return-void

    .line 480
    :cond_1
    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-eq v0, v6, :cond_2

    .line 485
    return-void

    .line 481
    :cond_2
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    goto :goto_0

    .line 501
    :cond_3
    iput-short v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    goto :goto_1

    .line 504
    :cond_4
    iput-short v1, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "#PCDATA"

    .line 507
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_6

    .line 511
    const/4 v3, 0x3

    iput-short v3, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    goto :goto_1

    .line 508
    :cond_6
    const/4 v3, 0x2

    iput-short v3, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    goto :goto_1

    .line 532
    :cond_7
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_2
.end method

.method public empty(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1121
    return-void
.end method

.method public endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 887
    return-void
.end method

.method public endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 920
    return-void
.end method

.method public endContentModel(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1130
    return-void
.end method

.method public endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 792
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fIsImmutable:Z

    .line 794
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->getRootName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 808
    :goto_0
    return-void

    .line 798
    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    .line 799
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 800
    :goto_1
    if-ge v0, v1, :cond_1

    .line 801
    shr-int/lit8 v3, v0, 0x8

    .line 802
    and-int/lit16 v4, v0, 0xff

    .line 803
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v3, v5, v3

    aget-object v3, v3, v4

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 804
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 806
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setPossibleRoots(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    .line 462
    return-void
.end method

.method public endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1087
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fMixed:Z

    if-eqz v0, :cond_0

    .line 1095
    :goto_0
    return-void

    .line 1088
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1091
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v0, v0, v1

    .line 1092
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aput v0, v1, v2

    goto :goto_0

    .line 1089
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget-short v2, v2, v3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v3, v3, v4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v0, v1

    goto :goto_1
.end method

.method public endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 447
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    .line 448
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    .line 450
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 715
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 716
    if-eq v0, v1, :cond_0

    .line 728
    :goto_0
    return-void

    .line 717
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createEntityDecl()I

    move-result v9

    const-string/jumbo v0, "%"

    .line 718
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 719
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    if-eqz v0, :cond_2

    :goto_1
    const/4 v8, 0x1

    .line 721
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    .line 722
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    .line 723
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v6, v5

    .line 722
    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 726
    invoke-virtual {p0, v9, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setEntityDecl(ILmf/org/apache/xerces/impl/dtd/XMLEntityDecl;)V

    goto :goto_0

    .line 719
    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    if-lez v0, :cond_1

    goto :goto_1
.end method

.method public getAttributeDecl(ILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 1298
    if-gez p1, :cond_1

    .line 1299
    :cond_0
    return v0

    .line 1298
    :cond_1
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    if-ge p1, v2, :cond_0

    .line 1301
    shr-int/lit8 v8, p1, 0x8

    .line 1302
    and-int/lit16 v10, p1, 0xff

    .line 1304
    iget-object v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v3, v3, v8

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 1309
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v2, v2, v8

    aget-short v2, v2, v10

    if-eq v2, v1, :cond_2

    .line 1314
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v1, v1, v8

    aget-short v1, v1, v10

    and-int/lit16 v1, v1, -0x81

    int-to-short v1, v1

    .line 1315
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v2, v2, v8

    aget-short v2, v2, v10

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_3

    :goto_0
    move v4, v0

    .line 1317
    :goto_1
    iget-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v2, v2, v8

    aget-object v2, v2, v10

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 1318
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    aget-object v3, v3, v8

    aget-object v3, v3, v10

    .line 1319
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    aget-object v5, v5, v8

    aget-short v5, v5, v10

    .line 1320
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    aget-object v6, v6, v8

    aget-object v6, v6, v10

    .line 1321
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    aget-object v7, v7, v8

    aget-object v7, v7, v10

    .line 1322
    iget-object v11, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    aget-object v8, v11, v8

    aget-object v8, v8, v10

    .line 1317
    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->setValues(SLjava/lang/String;[Ljava/lang/String;ZSLjava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/DatatypeValidator;)V

    .line 1323
    return v9

    :cond_2
    move v4, v0

    .line 1313
    goto :goto_1

    :cond_3
    move v0, v9

    .line 1315
    goto :goto_0
.end method

.method public getAttributeDeclIndex(ILjava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 341
    if-eq p1, v2, :cond_1

    .line 344
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v0

    .line 345
    :goto_0
    if-eq v0, v2, :cond_3

    .line 346
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    .line 348
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v1, p2, :cond_2

    .line 350
    :cond_0
    return v0

    .line 342
    :cond_1
    return v2

    .line 349
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v0

    goto :goto_0

    .line 354
    :cond_3
    return v2
.end method

.method public getAttributeDeclIsExternal(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 331
    if-ltz p1, :cond_0

    .line 335
    shr-int/lit8 v0, p1, 0x8

    .line 336
    and-int/lit16 v1, p1, 0xff

    .line 337
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    aget-object v0, v2, v0

    aget v0, v0, v1

    if-nez v0, :cond_1

    return v3

    .line 332
    :cond_0
    return v3

    .line 337
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1437
    if-gez p1, :cond_1

    .line 1438
    :cond_0
    return v1

    .line 1437
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecCount:I

    if-ge p1, v0, :cond_0

    .line 1440
    shr-int/lit8 v0, p1, 0x8

    .line 1441
    and-int/lit16 v1, p1, 0xff

    .line 1443
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    aget-object v2, v2, v0

    aget-short v2, v2, v1

    int-to-short v2, v2

    iput-short v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    .line 1444
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iput-object v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    .line 1445
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    iput-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    .line 1446
    const/4 v0, 0x1

    return v0
.end method

.method public getContentSpecAsString(I)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x29

    const/16 v6, 0x28

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1472
    if-gez p1, :cond_1

    .line 1473
    :cond_0
    return-object v3

    .line 1472
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-ge p1, v0, :cond_0

    .line 1476
    shr-int/lit8 v0, p1, 0x8

    .line 1477
    and-int/lit16 v1, p1, 0xff

    .line 1479
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    aget-object v0, v2, v0

    aget v0, v0, v1

    .line 1482
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    .line 1484
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1625
    return-object v3

    .line 1487
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1488
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v3, v0, 0xf

    .line 1490
    packed-switch v3, :pswitch_data_0

    const-string/jumbo v0, "???"

    .line 1615
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1621
    :cond_3
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1492
    :pswitch_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1493
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 1497
    :cond_4
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1499
    :goto_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1493
    :cond_5
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v0, :cond_4

    const-string/jumbo v0, "#PCDATA"

    .line 1494
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1503
    :pswitch_1
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v4

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 1504
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    .line 1506
    if-eqz v0, :cond_7

    const/4 v4, 0x3

    .line 1510
    if-ne v0, v4, :cond_8

    .line 1513
    :cond_6
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1514
    invoke-direct {p0, v1, v2, v5, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    .line 1516
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1521
    :goto_2
    const/16 v0, 0x3f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1507
    :cond_7
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1508
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1509
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    const/4 v4, 0x2

    .line 1511
    if-eq v0, v4, :cond_6

    .line 1512
    if-eq v0, v5, :cond_6

    .line 1518
    invoke-direct {p0, v1, v2, v5, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_2

    .line 1525
    :pswitch_2
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v4

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 1526
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    .line 1528
    if-eqz v0, :cond_a

    const/4 v4, 0x3

    .line 1544
    if-ne v0, v4, :cond_f

    .line 1547
    :cond_9
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1548
    invoke-direct {p0, v1, v2, v5, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    .line 1550
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1555
    :goto_3
    const/16 v0, 0x2a

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1529
    :cond_a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1530
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-eqz v0, :cond_c

    .line 1533
    :cond_b
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v0, :cond_d

    .line 1536
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-eqz v0, :cond_e

    .line 1540
    invoke-direct {p0, v1, v2, v5, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    .line 1543
    :goto_4
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1530
    :cond_c
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v0, :cond_b

    const-string/jumbo v0, "#PCDATA"

    .line 1531
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_d
    const-string/jumbo v0, "##any:uri="

    .line 1534
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_e
    const-string/jumbo v0, "##any"

    .line 1537
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_f
    const/4 v4, 0x2

    .line 1545
    if-eq v0, v4, :cond_9

    .line 1546
    if-eq v0, v5, :cond_9

    .line 1552
    invoke-direct {p0, v1, v2, v5, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_3

    .line 1559
    :pswitch_3
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v4

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    .line 1560
    iget-short v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    .line 1562
    if-eqz v0, :cond_11

    const/4 v4, 0x3

    .line 1577
    if-ne v0, v4, :cond_16

    .line 1580
    :cond_10
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1581
    invoke-direct {p0, v1, v2, v5, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    .line 1583
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1588
    :goto_5
    const/16 v0, 0x2b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 1563
    :cond_11
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1564
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-eqz v0, :cond_13

    .line 1567
    :cond_12
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v0, :cond_14

    .line 1570
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 1574
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1576
    :goto_6
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 1564
    :cond_13
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v0, :cond_12

    const-string/jumbo v0, "#PCDATA"

    .line 1565
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_14
    const-string/jumbo v0, "##any:uri="

    .line 1568
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_15
    const-string/jumbo v0, "##any"

    .line 1571
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_16
    const/4 v4, 0x2

    .line 1578
    if-eq v0, v4, :cond_10

    .line 1579
    if-eq v0, v5, :cond_10

    .line 1585
    invoke-direct {p0, v1, v2, v5, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_5

    .line 1593
    :pswitch_4
    invoke-direct {p0, v1, v2, v5, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v0, "##any"

    .line 1598
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1599
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-string/jumbo v0, ":uri="

    .line 1600
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1601
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v0, "##other:uri="

    .line 1606
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1607
    iget-object v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v0, "##local"

    .line 1611
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 1490
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getContentSpecIndex(I)I
    .locals 3

    .prologue
    .line 1455
    if-gez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 1456
    return v0

    .line 1455
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-ge p1, v0, :cond_0

    .line 1458
    shr-int/lit8 v0, p1, 0x8

    .line 1459
    and-int/lit16 v1, p1, 0xff

    .line 1460
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    aget-object v0, v2, v0

    aget v0, v0, v1

    return v0
.end method

.method public getContentSpecType(I)S
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1193
    if-gez p1, :cond_1

    .line 1194
    :cond_0
    return v3

    .line 1193
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-ge p1, v0, :cond_0

    .line 1197
    shr-int/lit8 v0, p1, 0x8

    .line 1198
    and-int/lit16 v1, p1, 0xff

    .line 1200
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v2, v2, v0

    aget-short v2, v2, v1

    if-eq v2, v3, :cond_2

    .line 1204
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v0, v2, v0

    aget-short v0, v0, v1

    and-int/lit16 v0, v0, -0x81

    int-to-short v0, v0

    return v0

    .line 1201
    :cond_2
    return v3
.end method

.method public getDTDContentModelSource()Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDTDContentModelSource:Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;

    return-object v0
.end method

.method public getDTDSource()Lmf/org/apache/xerces/xni/parser/XMLDTDSource;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    return-object v0
.end method

.method protected getElementContentModelValidator(I)Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1692
    shr-int/lit8 v6, p1, 0x8

    .line 1693
    and-int/lit16 v7, p1, 0xff

    .line 1695
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    aget-object v0, v0, v6

    aget-object v0, v0, v7

    .line 1698
    if-nez v0, :cond_0

    .line 1702
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v0, v0, v6

    aget-short v0, v0, v7

    const/4 v1, 0x4

    .line 1703
    if-eq v0, v1, :cond_1

    .line 1708
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    aget-object v1, v1, v6

    aget v1, v1, v7

    .line 1715
    new-instance v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    .line 1716
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    const/4 v4, 0x2

    .line 1719
    if-eq v0, v4, :cond_2

    const/4 v2, 0x3

    .line 1730
    if-eq v0, v2, :cond_3

    .line 1739
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unknown content type for a element decl in getElementContentModelValidator() in AbstractDTDGrammar class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1699
    :cond_0
    return-object v0

    .line 1704
    :cond_1
    return-object v2

    .line 1724
    :cond_2
    new-instance v4, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;-><init>()V

    .line 1725
    invoke-direct {p0, v1, v2, v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->contentSpecTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;)V

    .line 1726
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;

    iget-object v1, v4, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->qname:[Lmf/org/apache/xerces/xni/QName;

    .line 1727
    iget-object v2, v4, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->type:[I

    .line 1728
    iget v4, v4, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    move v5, v3

    .line 1726
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;-><init>([Lmf/org/apache/xerces/xni/QName;[IIIZ)V

    .line 1744
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    aget-object v1, v1, v6

    aput-object v0, v1, v7

    .line 1746
    return-object v0

    .line 1737
    :cond_3
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createChildModel(I)Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    move-result-object v0

    goto :goto_0
.end method

.method public getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 1220
    if-gez p1, :cond_1

    .line 1221
    :cond_0
    return v0

    .line 1220
    :cond_1
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-ge p1, v2, :cond_0

    .line 1224
    shr-int/lit8 v2, p1, 0x8

    .line 1225
    and-int/lit16 v3, p1, 0xff

    .line 1227
    iget-object v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 1229
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v4, v4, v2

    aget-short v4, v4, v3

    if-eq v4, v6, :cond_3

    .line 1233
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v4, v4, v2

    aget-short v4, v4, v3

    and-int/lit16 v4, v4, -0x81

    int-to-short v4, v4

    int-to-short v4, v4

    iput-short v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    .line 1234
    iget-object v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v2, v5, v2

    aget-short v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_4

    :goto_0
    iput-boolean v0, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    .line 1238
    :goto_1
    iget-short v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 1239
    :cond_2
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementContentModelValidator(I)Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    move-result-object v0

    iput-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    .line 1242
    :goto_2
    iget-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-object v7, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->datatypeValidator:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 1243
    iget-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short v6, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    .line 1244
    iget-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-object v7, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    .line 1246
    return v1

    .line 1230
    :cond_3
    iput-short v6, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    .line 1231
    iget-object v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-boolean v0, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1234
    goto :goto_0

    .line 1238
    :cond_5
    iget-short v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto :goto_2
.end method

.method public getElementDeclIndex(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->get(Ljava/lang/String;)I

    move-result v0

    .line 1178
    return v0
.end method

.method public getElementDeclIndex(Lmf/org/apache/xerces/xni/QName;)I
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getElementDeclIsExternal(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 314
    if-ltz p1, :cond_0

    .line 318
    shr-int/lit8 v0, p1, 0x8

    .line 319
    and-int/lit16 v1, p1, 0xff

    .line 320
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    aget-object v0, v2, v0

    aget v0, v0, v1

    if-nez v0, :cond_1

    return v3

    .line 315
    :cond_0
    return v3

    .line 320
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method getElementDeclName(I)Lmf/org/apache/xerces/xni/QName;
    .locals 3

    .prologue
    .line 1251
    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1252
    return-object v0

    .line 1251
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-ge p1, v0, :cond_0

    .line 1254
    shr-int/lit8 v0, p1, 0x8

    .line 1255
    and-int/lit16 v1, p1, 0xff

    .line 1256
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getEntityDecl(ILmf/org/apache/xerces/impl/dtd/XMLEntityDecl;)Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 1370
    if-gez p1, :cond_1

    .line 1371
    :cond_0
    return v0

    .line 1370
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityCount:I

    if-ge p1, v1, :cond_0

    .line 1373
    shr-int/lit8 v8, p1, 0x8

    .line 1374
    and-int/lit16 v10, p1, 0xff

    .line 1376
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    aget-object v1, v1, v8

    aget-object v1, v1, v10

    .line 1377
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    aget-object v2, v2, v8

    aget-object v2, v2, v10

    .line 1378
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    aget-object v3, v3, v8

    aget-object v3, v3, v10

    .line 1379
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    aget-object v4, v4, v8

    aget-object v4, v4, v10

    .line 1380
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    aget-object v5, v5, v8

    aget-object v5, v5, v10

    .line 1381
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    aget-object v6, v6, v8

    aget-object v6, v6, v10

    .line 1382
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    aget-object v7, v7, v8

    aget-byte v7, v7, v10

    if-eqz v7, :cond_2

    move v7, v9

    .line 1383
    :goto_0
    iget-object v11, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    aget-object v8, v11, v8

    aget-byte v8, v8, v10

    if-eqz v8, :cond_3

    move v8, v9

    :goto_1
    move-object v0, p2

    .line 1376
    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1385
    return v9

    :cond_2
    move v7, v0

    .line 1382
    goto :goto_0

    :cond_3
    move v8, v0

    .line 1383
    goto :goto_1
.end method

.method public getEntityDeclIndex(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1353
    if-eqz p1, :cond_0

    .line 1357
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->get(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    .line 1354
    return v0
.end method

.method public getFirstAttributeDeclIndex(I)I
    .locals 3

    .prologue
    .line 1269
    shr-int/lit8 v0, p1, 0x8

    .line 1270
    and-int/lit16 v1, p1, 0xff

    .line 1272
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v0, v2, v0

    aget v0, v0, v1

    return v0
.end method

.method public getFirstElementDeclIndex()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1154
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-gez v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    return-object v0
.end method

.method public getNextAttributeDeclIndex(I)I
    .locals 3

    .prologue
    .line 1283
    shr-int/lit8 v0, p1, 0x8

    .line 1284
    and-int/lit16 v1, p1, 0xff

    .line 1286
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v0, v2, v0

    aget v0, v0, v1

    return v0
.end method

.method public getNextElementDeclIndex(I)I
    .locals 1

    .prologue
    .line 1164
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1165
    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method public getNotationDecl(ILmf/org/apache/xerces/impl/dtd/XMLNotationDecl;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1413
    if-gez p1, :cond_1

    .line 1414
    :cond_0
    return v1

    .line 1413
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationCount:I

    if-ge p1, v0, :cond_0

    .line 1416
    shr-int/lit8 v0, p1, 0x8

    .line 1417
    and-int/lit16 v1, p1, 0xff

    .line 1419
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    .line 1420
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    .line 1421
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    .line 1422
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    aget-object v0, v5, v0

    aget-object v0, v0, v1

    .line 1419
    invoke-virtual {p2, v2, v3, v4, v0}, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const/4 v0, 0x1

    return v0
.end method

.method public getNotationDeclIndex(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1396
    if-eqz p1, :cond_0

    .line 1400
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->get(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    .line 1397
    return v0
.end method

.method public getSymbolTable()Lmf/org/apache/xerces/util/SymbolTable;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-object v0
.end method

.method public ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 912
    return-void
.end method

.method protected initializeContentModelStack()V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 2011
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    if-eqz v0, :cond_0

    .line 2015
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 2026
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aput-short v4, v0, v1

    .line 2027
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aput v4, v0, v1

    .line 2028
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aput v4, v0, v1

    .line 2030
    return-void

    .line 2012
    :cond_0
    new-array v0, v1, [S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    .line 2013
    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    .line 2014
    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    goto :goto_0

    .line 2016
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 2017
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2018
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    .line 2019
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 2020
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2021
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    .line 2022
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 2023
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2024
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    goto :goto_0
.end method

.method public internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 685
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 686
    if-eq v0, v1, :cond_0

    .line 697
    :goto_0
    return-void

    .line 687
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createEntityDecl()I

    move-result v9

    const-string/jumbo v0, "%"

    .line 688
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 689
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    if-eqz v0, :cond_2

    :goto_1
    const/4 v8, 0x1

    .line 690
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    .line 692
    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 691
    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 694
    invoke-virtual {p0, v9, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setEntityDecl(ILmf/org/apache/xerces/impl/dtd/XMLEntityDecl;)V

    goto :goto_0

    .line 689
    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    if-lez v0, :cond_1

    goto :goto_1
.end method

.method public isCDATAAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1337
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Lmf/org/apache/xerces/xni/QName;)I

    move-result v0

    .line 1338
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1342
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1339
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    if-eqz v0, :cond_0

    .line 1340
    return v2
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2735
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2739
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    .line 2740
    if-gt v1, v2, :cond_0

    .line 2746
    return v0

    .line 2741
    :cond_0
    shr-int/lit8 v2, v1, 0x8

    .line 2742
    and-int/lit16 v1, v1, 0xff

    .line 2744
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    aget-object v2, v3, v2

    aget-object v1, v2, v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isImmutable()Z
    .locals 1

    .prologue
    .line 2033
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fIsImmutable:Z

    return v0
.end method

.method public isNamespaceAware()Z
    .locals 1

    .prologue
    .line 1138
    const/4 v0, 0x0

    return v0
.end method

.method public notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 773
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;-><init>()V

    .line 774
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    .line 775
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    .line 774
    invoke-virtual {v0, p1, v1, v2, v3}, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNotationDeclIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    .line 777
    if-eq v1, v2, :cond_0

    .line 782
    :goto_0
    return-void

    .line 778
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createNotationDecl()I

    move-result v1

    .line 779
    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setNotationDecl(ILmf/org/apache/xerces/impl/dtd/XMLNotationDecl;)V

    goto :goto_0
.end method

.method public occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, -0x1

    .line 1066
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fMixed:Z

    if-eqz v0, :cond_1

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    if-eq p1, v5, :cond_2

    .line 1069
    if-eq p1, v6, :cond_3

    const/4 v0, 0x4

    .line 1071
    if-ne p1, v0, :cond_0

    .line 1072
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v2, v2, v3

    invoke-virtual {p0, v6, v2, v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v0, v1

    goto :goto_0

    .line 1068
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2, v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v0, v1

    goto :goto_0

    .line 1070
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v2, v2, v3

    invoke-virtual {p0, v5, v2, v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fMixed:Z

    .line 991
    return-void
.end method

.method public printAttributes(I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1644
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v0

    .line 1645
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(I)V

    .line 1646
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, " ["

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1647
    :cond_0
    :goto_0
    if-eq v0, v3, :cond_1

    .line 1648
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 1649
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(I)V

    .line 1650
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->printAttribute(I)V

    .line 1651
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v0

    .line 1652
    if-eq v0, v3, :cond_0

    .line 1653
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1656
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " ]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1657
    return-void
.end method

.method public printElements()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1633
    new-instance v2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    .line 1634
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "element decl: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    .line 1637
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1636
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 1641
    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 867
    return-void
.end method

.method protected putElementNameMapping(Lmf/org/apache/xerces/xni/QName;II)V
    .locals 0

    .prologue
    .line 1786
    return-void
.end method

.method public separator(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v2, -0x1

    .line 1032
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fMixed:Z

    if-eqz v0, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget-short v0, v0, v1

    if-ne v0, v7, :cond_3

    .line 1039
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget-short v0, v0, v1

    if-eq v0, v6, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1040
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v0, v0, v1

    if-ne v0, v2, :cond_5

    .line 1043
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 1044
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aput-short v7, v0, v1

    goto :goto_0

    .line 1033
    :cond_3
    if-nez p1, :cond_2

    .line 1034
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v0, v0, v1

    if-ne v0, v2, :cond_4

    .line 1037
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 1038
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aput-short v6, v0, v1

    goto :goto_0

    .line 1035
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget-short v2, v2, v3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v3, v3, v4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v0, v1

    goto :goto_2

    .line 1041
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget-short v2, v2, v3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v3, v3, v4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v0, v1

    goto :goto_1
.end method

.method protected setAttributeDecl(IILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1832
    shr-int/lit8 v0, p2, 0x8

    .line 1833
    and-int/lit16 v1, p2, 0xff

    .line 1834
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 1835
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v2, v2, v0

    iget-object v3, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 1837
    iget-object v2, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-nez v2, :cond_0

    .line 1840
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1841
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    aget-object v2, v2, v0

    iget-object v3, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 1842
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    aget-object v2, v2, v0

    iget-object v3, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->datatypeValidator:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    aput-object v3, v2, v1

    .line 1844
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1845
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    aget-object v0, v2, v0

    iget-object v2, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1847
    shr-int/lit8 v1, p1, 0x8

    .line 1848
    and-int/lit16 v2, p1, 0xff

    .line 1849
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v0, v0, v1

    aget v0, v0, v2

    .line 1850
    :goto_1
    if-eq v0, v5, :cond_1

    .line 1851
    if-eq v0, p2, :cond_1

    .line 1854
    shr-int/lit8 v3, v0, 0x8

    .line 1855
    and-int/lit16 v0, v0, 0xff

    .line 1856
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v3, v4, v3

    aget v0, v3, v0

    goto :goto_1

    .line 1838
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v2, v2, v0

    aget-short v3, v2, v1

    or-int/lit16 v3, v3, 0x80

    int-to-short v3, v3

    int-to-short v3, v3

    aput-short v3, v2, v1

    goto :goto_0

    .line 1858
    :cond_1
    if-eq v0, v5, :cond_2

    .line 1869
    :goto_2
    return-void

    .line 1859
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v0, v0, v1

    aget v0, v0, v2

    if-eq v0, v5, :cond_3

    .line 1862
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    aget-object v0, v0, v1

    aget v0, v0, v2

    .line 1863
    shr-int/lit8 v3, v0, 0x8

    .line 1864
    and-int/lit16 v0, v0, 0xff

    .line 1865
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v3, v4, v3

    aput p2, v3, v0

    .line 1867
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    aget-object v0, v0, v1

    aput p2, v0, v2

    goto :goto_2

    .line 1860
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v0, v0, v1

    aput p2, v0, v2

    goto :goto_3
.end method

.method protected setContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V
    .locals 4

    .prologue
    .line 1884
    shr-int/lit8 v0, p1, 0x8

    .line 1885
    and-int/lit16 v1, p1, 0xff

    .line 1887
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    aget-object v2, v2, v0

    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 1888
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 1889
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    aget-object v0, v2, v0

    iget-object v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 1890
    return-void
.end method

.method protected setContentSpecIndex(II)V
    .locals 3

    .prologue
    .line 1802
    if-gez p1, :cond_1

    .line 1803
    :cond_0
    return-void

    .line 1802
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-ge p1, v0, :cond_0

    .line 1806
    shr-int/lit8 v0, p1, 0x8

    .line 1807
    and-int/lit16 v1, p1, 0xff

    .line 1809
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    aget-object v0, v2, v0

    aput p2, v0, v1

    .line 1810
    return-void
.end method

.method public setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V
    .locals 0

    .prologue
    .line 928
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDTDContentModelSource:Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;

    .line 929
    return-void
.end method

.method public setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    .line 813
    return-void
.end method

.method protected setElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)V
    .locals 4

    .prologue
    .line 1763
    if-gez p1, :cond_1

    .line 1764
    :cond_0
    return-void

    .line 1763
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-ge p1, v0, :cond_0

    .line 1766
    shr-int/lit8 v0, p1, 0x8

    .line 1767
    and-int/lit16 v1, p1, 0xff

    .line 1769
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 1770
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v2, v2, v0

    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 1772
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    aget-object v2, v2, v0

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    aput-object v3, v2, v1

    .line 1774
    iget-object v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-nez v2, :cond_2

    .line 1778
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    iget-object v1, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->put(Ljava/lang/String;I)V

    .line 1779
    return-void

    .line 1775
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v0, v2, v0

    aget-short v2, v0, v1

    or-int/lit16 v2, v2, 0x80

    int-to-short v2, v2

    int-to-short v2, v2

    aput-short v2, v0, v1

    goto :goto_0
.end method

.method protected setEntityDecl(ILmf/org/apache/xerces/impl/dtd/XMLEntityDecl;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1905
    shr-int/lit8 v3, p1, 0x8

    .line 1906
    and-int/lit16 v4, p1, 0xff

    .line 1908
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v5, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->name:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 1909
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v5, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->value:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 1910
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v5, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->publicId:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 1911
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v5, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->systemId:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 1912
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v5, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->baseSystemId:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 1913
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v5, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->notation:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 1914
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    aget-object v5, v0, v3

    iget-boolean v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->isPE:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v5, v4

    .line 1915
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    aget-object v0, v0, v3

    iget-boolean v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->inExternal:Z

    if-nez v3, :cond_1

    :goto_1
    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 1917
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    iget-object v1, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->put(Ljava/lang/String;I)V

    .line 1918
    return-void

    :cond_0
    move v0, v2

    .line 1914
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1915
    goto :goto_1
.end method

.method protected setFirstAttributeDeclIndex(II)V
    .locals 3

    .prologue
    .line 1790
    if-gez p1, :cond_1

    .line 1791
    :cond_0
    return-void

    .line 1790
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-ge p1, v0, :cond_0

    .line 1794
    shr-int/lit8 v0, p1, 0x8

    .line 1795
    and-int/lit16 v1, p1, 0xff

    .line 1797
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v0, v2, v0

    aput p2, v0, v1

    .line 1798
    return-void
.end method

.method protected setNotationDecl(ILmf/org/apache/xerces/impl/dtd/XMLNotationDecl;)V
    .locals 4

    .prologue
    .line 1927
    shr-int/lit8 v0, p1, 0x8

    .line 1928
    and-int/lit16 v1, p1, 0xff

    .line 1930
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1931
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->publicId:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1932
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->systemId:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1933
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    aget-object v0, v2, v0

    iget-object v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->baseSystemId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1935
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    iget-object v1, p2, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->put(Ljava/lang/String;I)V

    .line 1936
    return-void
.end method

.method public startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 879
    return-void
.end method

.method public startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 902
    return-void
.end method

.method public startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 949
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    .line 950
    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    .line 953
    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    .line 954
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->initializeContentModelStack()V

    .line 956
    return-void

    .line 951
    :cond_0
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    goto :goto_0
.end method

.method public startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    .line 378
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    .line 379
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    .line 380
    return-void
.end method

.method public startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    .line 429
    return-void
.end method

.method public startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 972
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    .line 973
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->initializeContentModelStack()V

    .line 974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fMixed:Z

    .line 975
    return-void
.end method

.method public startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 408
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 413
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    aput-boolean v2, v0, v1

    .line 414
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    .line 416
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Z

    .line 410
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    goto :goto_0
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 837
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 745
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    const-string/jumbo v1, "%"

    .line 746
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 747
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    if-eqz v1, :cond_1

    :goto_0
    const/4 v8, 0x1

    .line 749
    :cond_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    .line 750
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p3

    .line 749
    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 752
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    .line 753
    if-eq v1, v2, :cond_2

    .line 758
    :goto_1
    return-void

    .line 747
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    if-lez v1, :cond_0

    goto :goto_0

    .line 754
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createEntityDecl()I

    move-result v1

    .line 755
    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setEntityDecl(ILmf/org/apache/xerces/impl/dtd/XMLEntityDecl;)V

    goto :goto_1
.end method
