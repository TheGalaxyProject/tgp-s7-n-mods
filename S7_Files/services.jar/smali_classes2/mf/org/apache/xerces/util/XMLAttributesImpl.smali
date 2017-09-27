.class public Lmf/org/apache/xerces/util/XMLAttributesImpl;
.super Ljava/lang/Object;
.source "XMLAttributesImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLAttributes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    }
.end annotation


# static fields
.field protected static final SIZE_LIMIT:I = 0x14

.field protected static final TABLE_SIZE:I = 0x65


# instance fields
.field protected fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

.field protected fAttributeTableViewChainState:[I

.field protected fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

.field protected fIsTableViewConsistent:Z

.field protected fLargeCount:I

.field protected fLength:I

.field protected fNamespaces:Z

.field protected fTableViewBuckets:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x65

    .line 113
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>(I)V

    .line 114
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    .line 75
    iput v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    const/4 v0, 0x4

    .line 81
    new-array v0, v0, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 120
    iput p1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    const/4 v0, 0x0

    .line 121
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 122
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    new-instance v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v2, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method private getReportableType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 921
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 924
    return-object p1

    :cond_0
    const-string/jumbo v0, "NMTOKEN"

    .line 922
    return-object v0
.end method


# virtual methods
.method public addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/16 v3, 0x14

    const/4 v2, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 177
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v0, v3, :cond_2

    .line 194
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 206
    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    if-nez v0, :cond_9

    .line 207
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->prepareAndPopulateTableView()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    .line 211
    :goto_0
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v2

    .line 215
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v0, v0, v2

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-ne v0, v1, :cond_a

    .line 235
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, v2

    .line 236
    :goto_1
    if-eqz v0, :cond_d

    .line 237
    iget-object v1, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v1, v3, :cond_d

    .line 240
    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_1

    .line 178
    :cond_2
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 180
    :cond_3
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v0

    .line 182
    :goto_2
    if-eq v0, v2, :cond_5

    .line 266
    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    .line 267
    iget-object v2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 268
    iput-object p2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 269
    iput-object p3, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 270
    iput-object p3, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 271
    iput-boolean v5, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    .line 274
    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 276
    return v0

    .line 178
    :cond_4
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 183
    :cond_5
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    .line 184
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v2, v2

    if-eq v0, v2, :cond_6

    move v0, v1

    goto :goto_3

    .line 185
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    new-array v2, v0, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 186
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v3, v3

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v0, v0

    :goto_4
    array-length v3, v2

    if-ge v0, v3, :cond_7

    .line 188
    new-instance v3, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v3, v2, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 190
    :cond_7
    iput-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v0, v1

    .line 193
    goto :goto_3

    .line 195
    :cond_8
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    goto :goto_3

    .line 206
    :cond_9
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-eq v0, v3, :cond_1

    goto/16 :goto_0

    .line 216
    :cond_a
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    .line 217
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v3, v3

    if-eq v0, v3, :cond_b

    .line 227
    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    iget v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v3, v0, v2

    .line 228
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, v1

    iput-object v6, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 229
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v3, v3, v1

    aput-object v3, v0, v2

    move v0, v1

    .line 230
    goto/16 :goto_3

    .line 218
    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v3, v0, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 219
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v4

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v0, v0

    :goto_6
    array-length v4, v3

    if-ge v0, v4, :cond_c

    .line 221
    new-instance v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v4, v3, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 223
    :cond_c
    iput-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_5

    .line 243
    :cond_d
    if-eqz v0, :cond_e

    .line 260
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3

    .line 244
    :cond_e
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    .line 245
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v3, v3

    if-eq v0, v3, :cond_f

    .line 255
    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, v1

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v3, v3, v2

    iput-object v3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 256
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v3, v3, v1

    aput-object v3, v0, v2

    move v0, v1

    .line 257
    goto/16 :goto_3

    .line 246
    :cond_f
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v3, v0, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 247
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v4

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v0, v0

    :goto_8
    array-length v4, v3

    if-ge v0, v4, :cond_10

    .line 249
    new-instance v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v4, v3, v0

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 251
    :cond_10
    iput-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_7
.end method

.method public addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 790
    iget v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    .line 791
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 807
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, v2

    .line 808
    iget-object v1, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 809
    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 810
    iput-object p3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 811
    iput-object p3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 812
    iput-boolean v4, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    .line 815
    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 816
    return-void

    .line 793
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 797
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 799
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v3, v3

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 800
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v1, v1

    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 801
    new-instance v3, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v3, v0, v1

    .line 800
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 794
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_1

    .line 803
    :cond_2
    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_0
.end method

.method public checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 832
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 848
    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    .line 850
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->prepareTableView()V

    .line 855
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_8

    .line 856
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v2, v1, v0

    .line 857
    iget-object v1, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v3, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 861
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v1, v1, v3

    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-ne v1, v4, :cond_5

    .line 870
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v3

    .line 871
    :goto_1
    if-eqz v1, :cond_7

    .line 872
    iget-object v4, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v5, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eq v4, v5, :cond_6

    .line 876
    :cond_0
    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_1

    :cond_1
    move v1, v0

    .line 833
    :goto_2
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_8

    .line 834
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v2, v0, v1

    .line 835
    add-int/lit8 v0, v1, 0x1

    :goto_3
    iget v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v0, v3, :cond_4

    .line 836
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v3, v3, v0

    .line 837
    iget-object v4, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v5, v3, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eq v4, v5, :cond_3

    .line 835
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 838
    :cond_3
    iget-object v4, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v5, v3, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v4, v5, :cond_2

    .line 839
    iget-object v0, v3, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    return-object v0

    .line 833
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 862
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v4, v1, v3

    .line 863
    iput-object v6, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 864
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v2, v1, v3

    goto :goto_0

    .line 873
    :cond_6
    iget-object v4, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v5, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    .line 874
    iget-object v0, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    return-object v0

    .line 880
    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v3

    iput-object v1, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 881
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v2, v1, v3

    goto/16 :goto_0

    .line 885
    :cond_8
    return-object v6
.end method

.method protected cleanTableView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 962
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-ltz v0, :cond_0

    .line 971
    :goto_0
    return-void

    .line 964
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 969
    iput v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    goto :goto_0

    .line 965
    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 966
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aput v2, v1, v0

    goto :goto_1
.end method

.method public getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1

    .prologue
    .line 712
    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 713
    return-object v0

    .line 712
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 715
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    return-object v0
.end method

.method public getAugmentations(Ljava/lang/String;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 2

    .prologue
    .line 701
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 702
    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v1, v0

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    goto :goto_0
.end method

.method public getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 2

    .prologue
    .line 687
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 688
    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v1, v0

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 543
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v0, v1, :cond_2

    .line 544
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    .line 545
    iget-object v2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 543
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_1
    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    return v0

    :cond_2
    const/4 v0, -0x1

    .line 550
    return v0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 563
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v0, v1, :cond_4

    .line 564
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    .line 565
    iget-object v2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 563
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_1
    iget-object v2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne p1, v2, :cond_3

    .line 570
    :cond_2
    return v0

    .line 568
    :cond_3
    if-eqz p1, :cond_0

    iget-object v2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    .line 573
    return v0
.end method

.method public getIndexFast(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 753
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v0, v1, :cond_1

    .line 754
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    .line 755
    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v1, p1, :cond_0

    .line 753
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_0
    return v0

    :cond_1
    const/4 v0, -0x1

    .line 759
    return v0
.end method

.method public getIndexFast(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 903
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v0, v1, :cond_2

    .line 904
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    .line 905
    iget-object v2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eq v2, p2, :cond_1

    .line 903
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 906
    :cond_1
    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v1, p1, :cond_0

    .line 907
    return v0

    :cond_2
    const/4 v0, -0x1

    .line 910
    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    if-eqz v0, :cond_1

    .line 589
    if-gez p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 590
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    .line 587
    return-object v0

    .line 589
    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 592
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 526
    return-object v0

    .line 525
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 528
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    return-object v0
.end method

.method public getName(ILmf/org/apache/xerces/xni/QName;)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 328
    return-void
.end method

.method public getNonNormalizedValue(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 385
    return-object v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 639
    if-gez p1, :cond_1

    .line 640
    :cond_0
    return-object v1

    .line 639
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 642
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 644
    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :cond_2
    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 605
    if-gez p1, :cond_1

    .line 606
    :cond_0
    return-object v1

    .line 605
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 608
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 609
    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :cond_2
    return-object v0
.end method

.method protected getTableViewBucket(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 936
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr v0, v1

    return v0
.end method

.method protected getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const v2, 0x7fffffff

    .line 949
    if-eqz p2, :cond_0

    .line 953
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    and-int/2addr v0, v2

    .line 954
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    .line 953
    rem-int/2addr v0, v1

    return v0

    .line 950
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    and-int/2addr v0, v2

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr v0, v1

    return v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 447
    return-object v0

    .line 446
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 449
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 465
    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v1, v0

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 626
    iget-boolean v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    if-eqz v1, :cond_0

    .line 629
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    .line 630
    if-ne v1, v2, :cond_1

    :goto_0
    return-object v0

    .line 627
    :cond_0
    return-object v0

    .line 630
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, v1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 656
    return-object v0

    .line 655
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 658
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 659
    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 483
    return-object v0

    .line 482
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 485
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 501
    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v1, v0

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 674
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 675
    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isSpecified(I)Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    return v0
.end method

.method protected prepareAndPopulateTableView()V
    .locals 5

    .prologue
    .line 992
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->prepareTableView()V

    const/4 v0, 0x0

    .line 996
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v0, v1, :cond_1

    .line 997
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    .line 998
    iget-object v2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v2

    .line 999
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v3, v3, v2

    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-ne v3, v4, :cond_0

    .line 1006
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v3, v3, v2

    iput-object v3, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 1007
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v1, v3, v2

    .line 996
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1000
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v4, v3, v2

    const/4 v3, 0x0

    .line 1001
    iput-object v3, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 1002
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v1, v3, v2

    goto :goto_1

    .line 1010
    :cond_1
    return-void
.end method

.method protected prepareTableView()V
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->cleanTableView()V

    .line 984
    :goto_0
    return-void

    .line 978
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    new-array v0, v0, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 979
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    goto :goto_0
.end method

.method public removeAllAttributes()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 285
    iput v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    .line 286
    return-void
.end method

.method public removeAttributeAt(I)V
    .locals 5

    .prologue
    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    .line 298
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_0

    .line 306
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    .line 307
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    .line 300
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    add-int/lit8 v2, p1, 0x1

    .line 301
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    .line 300
    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method public setAugmentations(ILmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    .line 726
    return-void
.end method

.method public setName(ILmf/org/apache/xerces/xni/QName;)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 317
    return-void
.end method

.method public setNamespaces(Z)V
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    .line 140
    return-void
.end method

.method public setNonNormalizedValue(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 370
    if-eqz p2, :cond_0

    .line 373
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 374
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSpecified(IZ)V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    .line 398
    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setURI(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iput-object p2, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 736
    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    .line 358
    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 359
    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 360
    return-void
.end method
