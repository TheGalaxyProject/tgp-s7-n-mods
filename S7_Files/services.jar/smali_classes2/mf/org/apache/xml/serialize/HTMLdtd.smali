.class public final Lmf/org/apache/xml/serialize/HTMLdtd;
.super Ljava/lang/Object;
.source "HTMLdtd.java"


# static fields
.field private static final ALLOWED_HEAD:I = 0x20

.field private static final CLOSE_DD_DT:I = 0x80

.field private static final CLOSE_P:I = 0x40

.field private static final CLOSE_SELF:I = 0x100

.field private static final CLOSE_TABLE:I = 0x200

.field private static final CLOSE_TH_TD:I = 0x4000

.field private static final ELEM_CONTENT:I = 0x2

.field private static final EMPTY:I = 0x11

.field private static final ENTITIES_RESOURCE:Ljava/lang/String; = "HTMLEntities.res"

.field public static final HTMLPublicId:Ljava/lang/String; = "-//W3C//DTD HTML 4.01//EN"

.field public static final HTMLSystemId:Ljava/lang/String; = "http://www.w3.org/TR/html4/strict.dtd"

.field private static final ONLY_OPENING:I = 0x1

.field private static final OPT_CLOSING:I = 0x8

.field private static final PRESERVE:I = 0x4

.field public static final XHTMLPublicId:Ljava/lang/String; = "-//W3C//DTD XHTML 1.0 Strict//EN"

.field public static final XHTMLSystemId:Ljava/lang/String; = "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

.field private static _boolAttrs:Ljava/util/Hashtable;

.field private static _byChar:Ljava/util/Hashtable;

.field private static _byName:Ljava/util/Hashtable;

.field private static _elemDefs:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x20a

    const/4 v4, 0x2

    const/16 v3, 0x11

    const/16 v2, 0x40

    .line 472
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_elemDefs:Ljava/util/Hashtable;

    const-string/jumbo v0, "ADDRESS"

    .line 473
    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "AREA"

    .line 474
    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "BASE"

    const/16 v1, 0x31

    .line 475
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "BASEFONT"

    .line 476
    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "BLOCKQUOTE"

    .line 477
    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "BODY"

    const/16 v1, 0x8

    .line 478
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "BR"

    .line 479
    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "COL"

    .line 480
    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "COLGROUP"

    .line 481
    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "DD"

    const/16 v1, 0x89

    .line 482
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "DIV"

    .line 483
    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "DL"

    const/16 v1, 0x42

    .line 484
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "DT"

    const/16 v1, 0x89

    .line 485
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "FIELDSET"

    .line 486
    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "FORM"

    .line 487
    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "FRAME"

    const/16 v1, 0x19

    .line 488
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H1"

    .line 489
    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H2"

    .line 490
    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H3"

    .line 491
    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H4"

    .line 492
    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H5"

    .line 493
    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H6"

    .line 494
    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "HEAD"

    const/16 v1, 0xa

    .line 495
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "HR"

    const/16 v1, 0x51

    .line 496
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "HTML"

    const/16 v1, 0xa

    .line 497
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "IMG"

    .line 498
    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "INPUT"

    .line 499
    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "ISINDEX"

    const/16 v1, 0x31

    .line 500
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "LI"

    const/16 v1, 0x109

    .line 501
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "LINK"

    const/16 v1, 0x31

    .line 502
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "MAP"

    const/16 v1, 0x20

    .line 503
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "META"

    const/16 v1, 0x31

    .line 504
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "OL"

    const/16 v1, 0x42

    .line 505
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "OPTGROUP"

    .line 506
    invoke-static {v0, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "OPTION"

    const/16 v1, 0x109

    .line 507
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "P"

    const/16 v1, 0x148

    .line 508
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "PARAM"

    .line 509
    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "PRE"

    const/16 v1, 0x44

    .line 510
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "SCRIPT"

    const/16 v1, 0x24

    .line 511
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "NOSCRIPT"

    const/16 v1, 0x24

    .line 512
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "SELECT"

    .line 513
    invoke-static {v0, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "STYLE"

    const/16 v1, 0x24

    .line 514
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TABLE"

    const/16 v1, 0x42

    .line 515
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TBODY"

    .line 516
    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TD"

    const/16 v1, 0x4008

    .line 517
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TEXTAREA"

    const/4 v1, 0x4

    .line 518
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TFOOT"

    .line 519
    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TH"

    const/16 v1, 0x4008

    .line 520
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "THEAD"

    .line 521
    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TITLE"

    const/16 v1, 0x20

    .line 522
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TR"

    .line 523
    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "UL"

    const/16 v1, 0x42

    .line 524
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    .line 526
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_boolAttrs:Ljava/util/Hashtable;

    const-string/jumbo v0, "AREA"

    const-string/jumbo v1, "href"

    .line 527
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BUTTON"

    const-string/jumbo v1, "disabled"

    .line 528
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "DIR"

    const-string/jumbo v1, "compact"

    .line 529
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "DL"

    const-string/jumbo v1, "compact"

    .line 530
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FRAME"

    const-string/jumbo v1, "noresize"

    .line 531
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "HR"

    const-string/jumbo v1, "noshade"

    .line 532
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "IMAGE"

    const-string/jumbo v1, "ismap"

    .line 533
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "INPUT"

    const/4 v1, 0x4

    .line 534
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "defaultchecked"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    const-string/jumbo v3, "checked"

    aput-object v3, v1, v2

    const-string/jumbo v2, "readonly"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "disabled"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "LINK"

    const-string/jumbo v1, "link"

    .line 535
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "MENU"

    const-string/jumbo v1, "compact"

    .line 536
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OBJECT"

    const-string/jumbo v1, "declare"

    .line 537
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OL"

    const-string/jumbo v1, "compact"

    .line 538
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OPTGROUP"

    const-string/jumbo v1, "disabled"

    .line 539
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OPTION"

    const/4 v1, 0x3

    .line 540
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "default-selected"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    const-string/jumbo v3, "selected"

    aput-object v3, v1, v2

    const-string/jumbo v2, "disabled"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "SCRIPT"

    const-string/jumbo v1, "defer"

    .line 541
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "SELECT"

    .line 542
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "multiple"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    const-string/jumbo v3, "disabled"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "STYLE"

    const-string/jumbo v1, "disabled"

    .line 543
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TD"

    const-string/jumbo v1, "nowrap"

    .line 544
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TH"

    const-string/jumbo v1, "nowrap"

    .line 545
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TEXTAREA"

    .line 546
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "disabled"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    const-string/jumbo v3, "readonly"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "UL"

    const-string/jumbo v1, "compact"

    .line 547
    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lmf/org/apache/xml/serialize/HTMLdtd;->initialize()V

    .line 550
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charFromName(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 322
    invoke-static {}, Lmf/org/apache/xml/serialize/HTMLdtd;->initialize()V

    .line 323
    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 324
    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 327
    return v0

    .line 324
    :cond_1
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 325
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static defineBoolean(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 448
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method private static defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 454
    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_boolAttrs:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    return-void
.end method

.method private static defineElement(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 442
    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_elemDefs:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    return-void
.end method

.method private static defineEntity(Ljava/lang/String;C)V
    .locals 2

    .prologue
    .line 433
    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    :goto_0
    return-void

    .line 434
    :cond_0
    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byChar:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static fromChar(I)Ljava/lang/String;
    .locals 2

    .prologue
    const v0, 0xffff

    .line 341
    if-gt p0, v0, :cond_0

    .line 346
    invoke-static {}, Lmf/org/apache/xml/serialize/HTMLdtd;->initialize()V

    .line 347
    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byChar:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 342
    return-object v0
.end method

.method private static initialize()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 369
    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 372
    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    .line 373
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byChar:Ljava/util/Hashtable;

    const-class v0, Lmf/org/apache/xml/serialize/HTMLdtd;

    const-string/jumbo v2, "HTMLEntities.res"

    .line 374
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 375
    if-eqz v1, :cond_2

    .line 381
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string/jumbo v3, "ASCII"

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 382
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 383
    :goto_0
    if-eqz v0, :cond_7

    .line 384
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 385
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_1
    return-void

    .line 376
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "http://apache.org/xml/serializer"

    const-string/jumbo v3, "ResourceNotFound"

    const/4 v4, 0x1

    .line 379
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "HTMLEntities.res"

    aput-object v6, v4, v5

    .line 377
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "http://apache.org/xml/serializer"

    const-string/jumbo v4, "ResourceNotLoaded"

    const/4 v5, 0x2

    .line 408
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "HTMLEntities.res"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 406
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 410
    if-nez v1, :cond_8

    .line 415
    :goto_1
    throw v0

    :cond_3
    const/4 v3, 0x0

    .line 384
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_0

    const/16 v3, 0x20

    .line 388
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 389
    if-gt v3, v6, :cond_5

    .line 401
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    .line 390
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 391
    add-int/lit8 v3, v3, 0x1

    .line 392
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 393
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x20

    .line 394
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 395
    if-gtz v3, :cond_6

    .line 397
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 398
    int-to-char v0, v0

    invoke-static {v4, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineEntity(Ljava/lang/String;C)V

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    .line 396
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 403
    :cond_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    if-nez v1, :cond_9

    .line 416
    :goto_4
    return-void

    .line 412
    :cond_8
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 413
    :catch_1
    move-exception v1

    goto :goto_1

    .line 412
    :cond_9
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 413
    :catch_2
    move-exception v0

    goto :goto_4
.end method

.method public static isBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 300
    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_boolAttrs:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 301
    if-eqz v0, :cond_0

    move v1, v2

    .line 303
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 304
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    :cond_0
    return v2

    .line 305
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 306
    :cond_2
    return v2
.end method

.method public static isClosing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "HEAD"

    .line 250
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "P"

    .line 253
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "DT"

    .line 256
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/16 v0, 0x80

    .line 257
    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_1
    const/16 v1, 0x20

    .line 251
    invoke-static {p0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    const/16 v0, 0x40

    .line 254
    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_4
    const-string/jumbo v1, "DD"

    .line 256
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "LI"

    .line 259
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/16 v0, 0x100

    .line 260
    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_6
    const-string/jumbo v1, "OPTION"

    .line 259
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "THEAD"

    .line 262
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/16 v0, 0x200

    .line 265
    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_8
    const-string/jumbo v1, "TFOOT"

    .line 262
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "TBODY"

    .line 263
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "TR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "COLGROUP"

    .line 264
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "TH"

    .line 267
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const/16 v0, 0x4000

    .line 268
    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_a
    const-string/jumbo v1, "TD"

    .line 267
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 269
    return v0
.end method

.method private static isElement(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_elemDefs:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 463
    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_1

    return v2

    .line 464
    :cond_0
    return v2

    .line 466
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isElementContent(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 192
    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isEmptyTag(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/16 v0, 0x11

    .line 178
    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isOnlyOpening(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 233
    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isOptionalClosing(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 220
    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isPreserveSpace(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 206
    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isURI(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "href"

    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1
.end method
