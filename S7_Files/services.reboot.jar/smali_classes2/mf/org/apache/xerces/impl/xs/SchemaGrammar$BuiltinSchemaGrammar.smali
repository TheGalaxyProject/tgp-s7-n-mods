.class public Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;
.super Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.source "SchemaGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuiltinSchemaGrammar"
.end annotation


# static fields
.field private static final EXTENDED_SCHEMA_FACTORY_CLASS:Ljava/lang/String; = "mf.org.apache.xerces.impl.dv.xs.ExtendedSchemaDVFactoryImpl"


# direct methods
.method public constructor <init>(IS)V
    .locals 9

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 275
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>()V

    .line 277
    if-eq p2, v8, :cond_0

    const-string/jumbo v0, "mf.org.apache.xerces.impl.dv.xs.ExtendedSchemaDVFactoryImpl"

    .line 281
    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-result-object v0

    .line 284
    :goto_0
    if-eq p1, v8, :cond_1

    const/4 v1, 0x2

    .line 331
    if-eq p1, v1, :cond_4

    .line 395
    :goto_1
    return-void

    .line 278
    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_1
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    .line 289
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 290
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    .line 291
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    .line 294
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 295
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 296
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 297
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 298
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 299
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 302
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 303
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 304
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 305
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 306
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 307
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 308
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 311
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 314
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getBuiltInTypes()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 318
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v1

    .line 319
    new-array v2, v1, [Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 320
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;->getValues([Ljava/lang/Object;I)I

    .line 321
    :goto_2
    if-ge v3, v1, :cond_3

    .line 322
    aget-object v0, v2, v3

    .line 323
    instance-of v4, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-nez v4, :cond_2

    .line 321
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 324
    :cond_2
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_3

    .line 329
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 333
    :cond_4
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    .line 335
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 336
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    .line 337
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    .line 340
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 341
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 342
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 343
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 344
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 345
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 348
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 349
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 350
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 351
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 352
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 353
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 354
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 357
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 360
    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 367
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    .line 368
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    const-string/jumbo v4, "QName"

    .line 369
    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v4

    .line 370
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v7, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;

    invoke-direct {v7, v1, v2, v4, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)V

    invoke-virtual {v6, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 373
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    .line 374
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    const-string/jumbo v4, "boolean"

    .line 375
    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v4

    .line 376
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v7, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;

    invoke-direct {v7, v1, v2, v4, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)V

    invoke-virtual {v6, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "anyURI"

    .line 378
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v4

    .line 381
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    .line 382
    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    const-string/jumbo v1, "#AnonType_schemaLocation"

    .line 383
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeList(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    .line 384
    instance-of v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-nez v0, :cond_5

    .line 387
    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;

    invoke-direct {v2, v6, v7, v1, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)V

    invoke-virtual {v0, v6, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 390
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    .line 391
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    .line 393
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;

    invoke-direct {v3, v0, v1, v4, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)V

    invoke-virtual {v2, v0, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    .line 385
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setAnonymous(Z)V

    goto :goto_4
.end method


# virtual methods
.method public addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method public declared-synchronized addDocument(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    monitor-enter p0

    monitor-exit p0

    .line 467
    return-void
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 452
    return-void
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method public addGlobalElementDeclAll(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 446
    return-void
.end method

.method public addRedefinedGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method declared-synchronized getDOMParser()Lmf/org/apache/xerces/parsers/DOMParser;
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    .line 471
    return-object v0
.end method

.method public getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getSAXParser()Lmf/org/apache/xerces/parsers/SAXParser;
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    .line 474
    return-object v0
.end method

.method public setImportedGrammars(Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 407
    return-void
.end method
