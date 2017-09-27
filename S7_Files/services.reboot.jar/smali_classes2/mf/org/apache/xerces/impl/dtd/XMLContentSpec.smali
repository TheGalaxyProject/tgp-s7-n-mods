.class public Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;
.super Ljava/lang/Object;
.source "XMLContentSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dtd/XMLContentSpec$Provider;
    }
.end annotation


# static fields
.field public static final CONTENTSPECNODE_ANY:S = 0x6s

.field public static final CONTENTSPECNODE_ANY_LAX:S = 0x16s

.field public static final CONTENTSPECNODE_ANY_LOCAL:S = 0x8s

.field public static final CONTENTSPECNODE_ANY_LOCAL_LAX:S = 0x18s

.field public static final CONTENTSPECNODE_ANY_LOCAL_SKIP:S = 0x28s

.field public static final CONTENTSPECNODE_ANY_OTHER:S = 0x7s

.field public static final CONTENTSPECNODE_ANY_OTHER_LAX:S = 0x17s

.field public static final CONTENTSPECNODE_ANY_OTHER_SKIP:S = 0x27s

.field public static final CONTENTSPECNODE_ANY_SKIP:S = 0x26s

.field public static final CONTENTSPECNODE_CHOICE:S = 0x4s

.field public static final CONTENTSPECNODE_LEAF:S = 0x0s

.field public static final CONTENTSPECNODE_ONE_OR_MORE:S = 0x3s

.field public static final CONTENTSPECNODE_SEQ:S = 0x5s

.field public static final CONTENTSPECNODE_ZERO_OR_MORE:S = 0x2s

.field public static final CONTENTSPECNODE_ZERO_OR_ONE:S = 0x1s


# instance fields
.field public otherValue:Ljava/lang/Object;

.field public type:S

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->clear()V

    .line 174
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec$Provider;I)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->setValues(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec$Provider;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->setValues(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V

    .line 186
    return-void
.end method

.method public constructor <init>(SLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->setValues(SLjava/lang/Object;Ljava/lang/Object;)V

    .line 179
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    const/4 v0, -0x1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    .line 204
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    .line 205
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    if-nez p1, :cond_1

    .line 254
    :cond_0
    return v2

    .line 248
    :cond_1
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    if-eqz v0, :cond_0

    .line 249
    check-cast p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    .line 250
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-short v1, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-eq v0, v1, :cond_3

    :cond_2
    return v2

    .line 251
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 252
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 241
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    shl-int/lit8 v0, v0, 0x10

    .line 242
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    .line 241
    or-int/2addr v0, v1

    .line 243
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 241
    or-int/2addr v0, v1

    return v0
.end method

.method public setValues(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec$Provider;I)V
    .locals 1

    .prologue
    .line 229
    invoke-interface {p1, p2, p0}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec$Provider;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->clear()V

    goto :goto_0
.end method

.method public setValues(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V
    .locals 1

    .prologue
    .line 217
    iget-short v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    .line 218
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    .line 219
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public setValues(SLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 210
    int-to-short v0, p1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    .line 211
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    .line 212
    iput-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    .line 213
    return-void
.end method
