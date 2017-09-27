.class public Lmf/javax/xml/namespace/QName;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final compatibleSerialVersionUID:J = 0x3d521a30bc76fdffL

.field private static final defaultSerialVersionUID:J = -0x7e9257d203c42294L

.field private static final serialVersionUID:J

.field private static useDefaultSerialVersionUID:Z


# instance fields
.field private final localPart:Ljava/lang/String;

.field private final namespaceURI:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    sput-boolean v2, Lmf/javax/xml/namespace/QName;->useDefaultSerialVersionUID:Z

    .line 130
    :try_start_0
    new-instance v0, Lmf/javax/xml/namespace/QName$1;

    invoke-direct {v0}, Lmf/javax/xml/namespace/QName$1;-><init>()V

    .line 129
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lmf/javax/xml/namespace/QName;->useDefaultSerialVersionUID:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_1
    sget-boolean v0, Lmf/javax/xml/namespace/QName;->useDefaultSerialVersionUID:Z

    if-nez v0, :cond_2

    const-wide v0, 0x3d521a30bc76fdffL    # 2.572492427824108E-13

    .line 146
    sput-wide v0, Lmf/javax/xml/namespace/QName;->serialVersionUID:J

    .line 148
    :goto_2
    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v3, "1.0"

    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    sput-boolean v2, Lmf/javax/xml/namespace/QName;->useDefaultSerialVersionUID:Z

    goto :goto_1

    :cond_2
    const-wide v0, -0x7e9257d203c42294L

    .line 144
    sput-wide v0, Lmf/javax/xml/namespace/QName;->serialVersionUID:J

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    .line 319
    invoke-direct {p0, v0, p1, v1}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 207
    invoke-direct {p0, p1, p2, v0}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    if-eqz p1, :cond_0

    .line 257
    iput-object p1, p0, Lmf/javax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    .line 262
    :goto_0
    if-eqz p2, :cond_1

    .line 266
    iput-object p2, p0, Lmf/javax/xml/namespace/QName;->localPart:Ljava/lang/String;

    .line 269
    if-eqz p3, :cond_2

    .line 273
    iput-object p3, p0, Lmf/javax/xml/namespace/QName;->prefix:Ljava/lang/String;

    .line 274
    return-void

    :cond_0
    const-string/jumbo v0, ""

    .line 255
    iput-object v0, p0, Lmf/javax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    goto :goto_0

    .line 263
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "local part cannot be \"null\" when creating a QName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "prefix cannot be \"null\" when creating a QName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmf/javax/xml/namespace/QName;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 489
    if-eqz p0, :cond_0

    .line 495
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "{}"

    .line 511
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x7d

    .line 523
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    .line 524
    if-eq v0, v1, :cond_4

    .line 530
    new-instance v1, Lmf/javax/xml/namespace/QName;

    const/4 v2, 0x1

    .line 531
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 532
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    .line 530
    invoke-direct {v1, v2, v0, v3}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 490
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cannot create QName from \"null\" or \"\" String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_1
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, p0, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 504
    :cond_2
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, p0, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 512
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Namespace URI .equals(XMLConstants.NULL_NS_URI), .equals(\"\"), only the local part, \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ""

    .line 517
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\", "

    .line 518
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "should be provided."

    .line 519
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 513
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 512
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cannot create QName from \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\", missing closing \"}\""

    .line 528
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 526
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 378
    if-eq p1, p0, :cond_1

    .line 382
    if-nez p1, :cond_2

    .line 383
    :cond_0
    return v2

    .line 379
    :cond_1
    return v3

    .line 382
    :cond_2
    instance-of v0, p1, Lmf/javax/xml/namespace/QName;

    if-eqz v0, :cond_0

    .line 386
    check-cast p1, Lmf/javax/xml/namespace/QName;

    .line 388
    iget-object v0, p0, Lmf/javax/xml/namespace/QName;->localPart:Ljava/lang/String;

    iget-object v1, p1, Lmf/javax/xml/namespace/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return v2

    .line 389
    :cond_4
    iget-object v0, p0, Lmf/javax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    iget-object v1, p1, Lmf/javax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 388
    return v3
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lmf/javax/xml/namespace/QName;->localPart:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lmf/javax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lmf/javax/xml/namespace/QName;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lmf/javax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lmf/javax/xml/namespace/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lmf/javax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/javax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmf/javax/xml/namespace/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 435
    :cond_0
    iget-object v0, p0, Lmf/javax/xml/namespace/QName;->localPart:Ljava/lang/String;

    return-object v0
.end method
