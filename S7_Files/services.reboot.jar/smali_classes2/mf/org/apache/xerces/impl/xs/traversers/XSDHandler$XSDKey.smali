.class Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
.super Ljava/lang/Object;
.source "XSDHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XSDKey"
.end annotation


# instance fields
.field referNS:Ljava/lang/String;

.field referType:S

.field systemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;SLjava/lang/String;)V
    .locals 1

    .prologue
    .line 4235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4236
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->systemId:Ljava/lang/String;

    .line 4237
    int-to-short v0, p2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referType:S

    .line 4238
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    .line 4239
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4248
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    if-eqz v0, :cond_1

    .line 4251
    check-cast p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    .line 4261
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    .line 4265
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->systemId:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 4266
    :cond_0
    return v2

    .line 4249
    :cond_1
    return v2

    .line 4262
    :cond_2
    return v2

    .line 4265
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->systemId:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->systemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4269
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 4244
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
