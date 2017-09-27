.class final Lmf/org/apache/xerces/xpointer/ElementSchemePointer;
.super Ljava/lang/Object;
.source "ElementSchemePointer.java"

# interfaces
.implements Lmf/org/apache/xerces/xpointer/XPointerPart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;,
        Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;
    }
.end annotation


# instance fields
.field private fChildSequence:[I

.field private fCurrentChildDepth:I

.field private fCurrentChildPosition:I

.field private fCurrentChildSequence:[I

.field protected fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field fFoundDepth:I

.field private fIsElementFound:Z

.field private fIsFragmentResolved:Z

.field private fIsResolveElement:Z

.field fIsShortHand:Z

.field private fSchemeData:Ljava/lang/String;

.field private fSchemeName:Ljava/lang/String;

.field private fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

.field private fShortHandPointerName:Ljava/lang/String;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private fWasOnlyEmptyElementFound:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    .line 60
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 63
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    .line 66
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    .line 69
    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    const/4 v0, 0x1

    .line 75
    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    .line 78
    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    .line 84
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    .line 102
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    .line 60
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 63
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    .line 66
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    .line 69
    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    const/4 v0, 0x1

    .line 75
    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    .line 78
    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    .line 84
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    .line 105
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 106
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    .line 60
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 63
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    .line 66
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    .line 69
    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    const/4 v0, 0x1

    .line 75
    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    .line 78
    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    .line 84
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    .line 110
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 111
    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 112
    return-void
.end method


# virtual methods
.method protected checkMatch()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v0, v0

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    add-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_3

    .line 404
    return v1

    .line 376
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v0, v0

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    add-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_1

    .line 384
    return v1

    :cond_1
    move v0, v1

    .line 378
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 379
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    aget v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_2

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_2
    return v1

    :cond_3
    move v0, v1

    .line 392
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 394
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v2, v2

    add-int/lit8 v3, v0, 0x2

    if-lt v2, v3, :cond_4

    .line 399
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    aget v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-ne v2, v3, :cond_5

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    :cond_4
    return v1

    .line 400
    :cond_5
    return v1

    .line 409
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public getSchemeData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 473
    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    .line 474
    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    .line 475
    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    .line 476
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    .line 477
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 478
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    .line 479
    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    const/4 v0, 0x1

    .line 480
    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    .line 481
    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    .line 482
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    .line 483
    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    .line 485
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->initErrorReporter()V

    .line 486
    return-void
.end method

.method protected initErrorReporter()V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v0, :cond_0

    .line 461
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    if-eqz v0, :cond_1

    .line 464
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/XPTR"

    .line 466
    new-instance v2, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;-><init>()V

    .line 464
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 467
    return-void

    .line 459
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    goto :goto_0

    .line 462
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    goto :goto_1
.end method

.method public isChildFragmentResolved()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 433
    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    if-nez v2, :cond_3

    .line 436
    :cond_0
    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    if-nez v2, :cond_4

    .line 437
    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    if-nez v2, :cond_5

    :cond_1
    :goto_0
    move v0, v1

    .line 436
    :cond_2
    :goto_1
    return v0

    .line 433
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    if-gtz v2, :cond_0

    .line 434
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->isChildFragmentResolved()Z

    move-result v0

    return v0

    .line 436
    :cond_4
    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 437
    :cond_5
    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    .line 436
    if-ge v2, v3, :cond_2

    goto :goto_0
.end method

.method public isFragmentResolved()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 421
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    return v0
.end method

.method protected matchChildSequence(Lmf/org/apache/xerces/xni/QName;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 292
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 304
    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    if-nez v0, :cond_2

    .line 360
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    return v0

    .line 293
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 294
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    .line 295
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v2, v2

    .line 294
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    .line 299
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    .line 300
    array-length v2, v0

    .line 299
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 306
    :cond_2
    if-eqz p2, :cond_3

    .line 324
    if-eq p2, v4, :cond_7

    const/4 v0, 0x2

    .line 339
    if-ne p2, v0, :cond_0

    .line 341
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    aput v2, v0, v1

    .line 342
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    .line 346
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->checkMatch()Z

    move-result v0

    if-nez v0, :cond_d

    .line 354
    iput-boolean v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 355
    iput-boolean v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    goto :goto_1

    .line 307
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    aput v2, v0, v1

    .line 308
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    .line 311
    iput v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    .line 314
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-gt v0, v1, :cond_5

    .line 315
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->checkMatch()Z

    move-result v0

    if-nez v0, :cond_6

    .line 319
    iput-boolean v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 320
    iput v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    goto :goto_1

    .line 314
    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-eqz v0, :cond_4

    goto :goto_1

    .line 316
    :cond_6
    iput-boolean v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 317
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    goto :goto_1

    .line 325
    :cond_7
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-eq v0, v1, :cond_9

    .line 327
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-lt v0, v1, :cond_a

    .line 328
    :cond_8
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-gt v0, v1, :cond_c

    .line 334
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    aput v3, v0, v1

    .line 336
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    .line 337
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    goto/16 :goto_1

    .line 326
    :cond_9
    iput-boolean v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    goto :goto_2

    .line 327
    :cond_a
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-eqz v0, :cond_8

    .line 330
    :cond_b
    iput-boolean v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    goto :goto_2

    .line 329
    :cond_c
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-eqz v0, :cond_b

    goto :goto_2

    .line 347
    :cond_d
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    if-eqz v0, :cond_e

    .line 350
    iput-boolean v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    .line 352
    :goto_3
    iput-boolean v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    goto/16 :goto_1

    .line 348
    :cond_e
    iput-boolean v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    goto :goto_3
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 127
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->init()V

    .line 130
    new-instance v2, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v0, v1}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;-><init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)V

    .line 133
    new-instance v0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$1;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$1;-><init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 148
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object v3, p1

    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;II)Z
    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->access$1(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;II)Z

    move-result v0

    .line 151
    if-eqz v0, :cond_0

    .line 158
    :goto_0
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->getTokenCount()I
    invoke-static {v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$4(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [I

    move v0, v4

    .line 164
    :goto_1
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->hasMore()Z
    invoke-static {v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->nextToken()I
    invoke-static {v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$6(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v3

    .line 167
    packed-switch v3, :pswitch_data_0

    const-string/jumbo v3, "InvalidElementSchemeXPointer"

    .line 189
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v4

    .line 188
    invoke-virtual {p0, v3, v5}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "InvalidElementSchemeXPointer"

    .line 153
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 152
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 172
    :pswitch_0
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->nextToken()I
    invoke-static {v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$6(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v3

    .line 173
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    .line 176
    new-instance v3, Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    iget-object v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v3, v5}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    iput-object v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    .line 177
    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    iget-object v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->setSchemeName(Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :pswitch_1
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->nextToken()I
    invoke-static {v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$6(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v3

    aput v3, v1, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    .line 195
    new-array v2, v0, [I

    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    .line 196
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    invoke-static {v1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    return-void

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/XPTR"

    .line 450
    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v1

    .line 451
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 262
    iput-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    move v0, v1

    .line 267
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    if-gtz v2, :cond_3

    .line 269
    if-nez v0, :cond_4

    .line 273
    :cond_0
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    .line 276
    :goto_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    return v0

    .line 253
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    .line 255
    if-nez v0, :cond_2

    .line 259
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    goto :goto_0

    .line 256
    :cond_2
    iput-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    .line 257
    iput-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    goto :goto_0

    .line 268
    :cond_3
    invoke-virtual {p0, p1, p4}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->matchChildSequence(Lmf/org/apache/xerces/xni/QName;I)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    goto :goto_1

    .line 269
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    if-gtz v2, :cond_0

    .line 271
    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    goto :goto_1
.end method

.method public setSchemeData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setSchemeName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    .line 225
    return-void
.end method
