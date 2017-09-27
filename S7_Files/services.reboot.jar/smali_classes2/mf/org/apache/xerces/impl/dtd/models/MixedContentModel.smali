.class public Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;
.super Ljava/lang/Object;
.source "MixedContentModel.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;


# instance fields
.field private final fChildren:[Lmf/org/apache/xerces/xni/QName;

.field private final fChildrenType:[I

.field private final fCount:I

.field private final fOrdered:Z


# direct methods
.method public constructor <init>([Lmf/org/apache/xerces/xni/QName;[IIIZ)V
    .locals 4

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p4, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fCount:I

    .line 82
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fCount:I

    new-array v0, v0, [Lmf/org/apache/xerces/xni/QName;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildren:[Lmf/org/apache/xerces/xni/QName;

    .line 83
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildrenType:[I

    const/4 v0, 0x0

    .line 84
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fCount:I

    if-ge v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildren:[Lmf/org/apache/xerces/xni/QName;

    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    add-int v3, p3, v0

    aget-object v3, p1, v3

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/xni/QName;-><init>(Lmf/org/apache/xerces/xni/QName;)V

    aput-object v2, v1, v0

    .line 86
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildrenType:[I

    add-int v2, p3, v0

    aget v2, p2, v2

    aput v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fOrdered:Z

    .line 90
    return-void
.end method


# virtual methods
.method public validate([Lmf/org/apache/xerces/xni/QName;II)I
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v1, 0x0

    .line 123
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fOrdered:Z

    if-nez v0, :cond_1

    move v2, v1

    .line 164
    :goto_0
    if-ge v2, p3, :cond_f

    .line 167
    add-int v0, p2, v2

    aget-object v3, p1, v0

    .line 170
    iget-object v0, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v0, :cond_a

    move v0, v1

    .line 175
    :goto_1
    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fCount:I

    if-ge v0, v4, :cond_9

    .line 177
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildrenType:[I

    aget v4, v4, v0

    .line 178
    if-eqz v4, :cond_8

    .line 183
    if-eq v4, v6, :cond_b

    .line 189
    if-eq v4, v8, :cond_c

    .line 194
    if-eq v4, v7, :cond_d

    .line 175
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 125
    :goto_3
    if-ge v1, p3, :cond_f

    .line 128
    add-int v2, p2, v1

    aget-object v2, p1, v2

    .line 129
    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 134
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildrenType:[I

    aget v2, v2, v0

    .line 135
    if-eqz v2, :cond_4

    .line 140
    if-eq v2, v6, :cond_5

    .line 146
    if-eq v2, v8, :cond_6

    .line 151
    if-eq v2, v7, :cond_7

    .line 158
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 125
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 136
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildren:[Lmf/org/apache/xerces/xni/QName;

    aget-object v2, v2, v0

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    add-int v3, p2, v1

    aget-object v3, p1, v3

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    .line 137
    return v1

    .line 141
    :cond_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildren:[Lmf/org/apache/xerces/xni/QName;

    aget-object v2, v2, v0

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 142
    if-eqz v2, :cond_2

    aget-object v3, p1, v1

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    .line 143
    return v1

    .line 147
    :cond_6
    aget-object v2, p1, v1

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 148
    return v1

    .line 152
    :cond_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildren:[Lmf/org/apache/xerces/xni/QName;

    aget-object v2, v2, v0

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aget-object v3, p1, v1

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v2, v3, :cond_2

    .line 153
    return v1

    .line 179
    :cond_8
    iget-object v4, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildren:[Lmf/org/apache/xerces/xni/QName;

    aget-object v5, v5, v0

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    .line 206
    :cond_9
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fCount:I

    if-eq v0, v3, :cond_e

    .line 164
    :cond_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 184
    :cond_b
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildren:[Lmf/org/apache/xerces/xni/QName;

    aget-object v4, v4, v0

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 185
    if-eqz v4, :cond_9

    aget-object v5, p1, v2

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v4, v5, :cond_9

    goto :goto_2

    .line 190
    :cond_c
    aget-object v4, p1, v2

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v4, :cond_9

    goto :goto_2

    .line 195
    :cond_d
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;->fChildren:[Lmf/org/apache/xerces/xni/QName;

    aget-object v4, v4, v0

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aget-object v5, p1, v2

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v4, v5, :cond_9

    goto/16 :goto_2

    .line 207
    :cond_e
    return v2

    :cond_f
    const/4 v0, -0x1

    .line 212
    return v0
.end method
