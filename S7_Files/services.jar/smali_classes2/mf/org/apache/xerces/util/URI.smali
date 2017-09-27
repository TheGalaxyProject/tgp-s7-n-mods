.class public Lmf/org/apache/xerces/util/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/URI$MalformedURIException;
    }
.end annotation


# static fields
.field private static final ASCII_ALPHA_CHARACTERS:I = 0x10

.field private static final ASCII_DIGIT_CHARACTERS:I = 0x20

.field private static final ASCII_HEX_CHARACTERS:I = 0x40

.field private static DEBUG:Z = false

.field private static final MARK_CHARACTERS:I = 0x2

.field private static final MASK_ALPHA_NUMERIC:I = 0x30

.field private static final MASK_PATH_CHARACTER:I = 0xb2

.field private static final MASK_SCHEME_CHARACTER:I = 0x34

.field private static final MASK_UNRESERVED_MASK:I = 0x32

.field private static final MASK_URI_CHARACTER:I = 0x33

.field private static final MASK_USERINFO_CHARACTER:I = 0x3a

.field private static final PATH_CHARACTERS:I = 0x80

.field private static final RESERVED_CHARACTERS:I = 0x1

.field private static final SCHEME_CHARACTERS:I = 0x4

.field private static final USERINFO_CHARACTERS:I = 0x8

.field private static final fgLookupTable:[B

.field static final serialVersionUID:J = 0x163b2b5de215849eL


# instance fields
.field private m_fragment:Ljava/lang/String;

.field private m_host:Ljava/lang/String;

.field private m_path:Ljava/lang/String;

.field private m_port:I

.field private m_queryString:Ljava/lang/String;

.field private m_regAuthority:Ljava/lang/String;

.field private m_scheme:Ljava/lang/String;

.field private m_userinfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x3a

    const/16 v7, 0x2c

    const/16 v6, 0x26

    const/16 v5, 0x24

    const/16 v4, 0x2b

    const/16 v0, 0x80

    .line 94
    new-array v0, v0, [B

    sput-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    .line 147
    if-gt v0, v1, :cond_0

    .line 148
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x60

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x46

    .line 152
    if-gt v0, v1, :cond_1

    .line 153
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x50

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 154
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    add-int/lit8 v2, v0, 0x20

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x50

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x47

    :goto_2
    const/16 v1, 0x5a

    .line 158
    if-gt v0, v1, :cond_2

    .line 159
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 160
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    add-int/lit8 v2, v0, 0x20

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 164
    :cond_2
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x3b

    const/16 v2, 0x3b

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 165
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 166
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x3f

    const/16 v2, 0x3f

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 167
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v1, v0, v8

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    .line 168
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x40

    const/16 v2, 0x40

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 169
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v1, v0, v6

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 170
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x3d

    const/16 v2, 0x3d

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 171
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v1, v0, v4

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 172
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v1, v0, v5

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 173
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v1, v0, v7

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 174
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x5b

    const/16 v2, 0x5b

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 175
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x5d

    const/16 v2, 0x5d

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 178
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x2d

    const/16 v2, 0x2d

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 179
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x5f

    const/16 v2, 0x5f

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 180
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x2e

    const/16 v2, 0x2e

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 181
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x21

    const/16 v2, 0x21

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 182
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x7e

    const/16 v2, 0x7e

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 183
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 184
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x27

    const/16 v2, 0x27

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 185
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x28

    const/16 v2, 0x28

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 186
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x29

    const/16 v2, 0x29

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 189
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v1, v0, v4

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 190
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x2d

    const/16 v2, 0x2d

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 191
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x2e

    const/16 v2, 0x2e

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 194
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x3b

    const/16 v2, 0x3b

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 195
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v1, v0, v8

    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    .line 196
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v1, v0, v6

    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 197
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x3d

    const/16 v2, 0x3d

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 198
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v1, v0, v4

    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 199
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v1, v0, v5

    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 200
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v1, v0, v7

    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 203
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x3b

    const/16 v2, 0x3b

    aget-byte v2, v0, v2

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 204
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    aget-byte v2, v0, v2

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 205
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v1, v0, v8

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    .line 206
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x40

    const/16 v2, 0x40

    aget-byte v2, v0, v2

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 207
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v1, v0, v6

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 208
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x3d

    const/16 v2, 0x3d

    aget-byte v2, v0, v2

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 209
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v1, v0, v4

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 210
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v1, v0, v5

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 211
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v1, v0, v7

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 239
    const/4 v0, 0x0

    sput-boolean v0, Lmf/org/apache/xerces/util/URI;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    const/4 v0, -0x1

    .line 224
    iput v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 227
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 234
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 237
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 273
    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    const/4 v0, -0x1

    .line 224
    iput v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 227
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 234
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 237
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 350
    if-nez p1, :cond_1

    .line 351
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Cannot construct URI with null/empty scheme!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    if-nez p2, :cond_3

    .line 356
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Cannot construct URI with null/empty scheme-specific part!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/util/URI;->setPath(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 218
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 221
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 224
    iput v1, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 227
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 230
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 234
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 237
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 419
    if-nez p1, :cond_1

    .line 420
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Scheme is required!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    if-eqz p3, :cond_4

    .line 434
    :cond_2
    if-nez p5, :cond_6

    .line 446
    :cond_3
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/util/URI;->setHost(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0, p4}, Lmf/org/apache/xerces/util/URI;->setPort(I)V

    .line 449
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/util/URI;->setUserinfo(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0, p5}, Lmf/org/apache/xerces/util/URI;->setPath(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0, p6}, Lmf/org/apache/xerces/util/URI;->setQueryString(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0, p7}, Lmf/org/apache/xerces/util/URI;->setFragment(Ljava/lang/String;)V

    .line 453
    return-void

    .line 424
    :cond_4
    if-nez p2, :cond_5

    .line 428
    if-eq p4, v1, :cond_2

    .line 429
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Port may not be specified if host is not specified!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_5
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Userinfo may not be specified if host is not specified!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/16 v0, 0x3f

    .line 435
    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_8

    :cond_7
    const/16 v0, 0x23

    .line 440
    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    if-eqz p7, :cond_3

    .line 441
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Fragment cannot be specified in both the path and fragment!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_8
    if-eqz p6, :cond_7

    .line 436
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Query string cannot be specified in path and query string!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 387
    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, v0, p1, p2}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;Z)V

    .line 297
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/URI;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    const/4 v0, -0x1

    .line 224
    iput v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 227
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 234
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 237
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 254
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/URI;->initialize(Lmf/org/apache/xerces/util/URI;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    const/4 v0, -0x1

    .line 224
    iput v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 227
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 234
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 237
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 312
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/util/URI;->initialize(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    const/4 v0, -0x1

    .line 224
    iput v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 227
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 234
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 237
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 333
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/URI;->initialize(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;Z)V

    .line 334
    return-void
.end method

.method private initialize(Lmf/org/apache/xerces/util/URI;)V
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 462
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 463
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 464
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getPort()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 465
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getRegBasedAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 466
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 467
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 469
    return-void
.end method

.method private initialize(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2f

    const/16 v7, 0x23

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 612
    if-nez p2, :cond_2

    move v0, v1

    .line 614
    :goto_0
    if-eqz p1, :cond_3

    .line 620
    :cond_0
    if-eqz v0, :cond_4

    const/16 v2, 0x3a

    .line 628
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 629
    if-ne v2, v6, :cond_5

    .line 653
    if-eqz p1, :cond_c

    .line 666
    :cond_1
    :goto_1
    add-int/lit8 v2, v1, 0x1

    if-lt v2, v0, :cond_d

    move v0, v1

    .line 696
    :goto_2
    invoke-direct {p0, p2, v0}, Lmf/org/apache/xerces/util/URI;->initializePath(Ljava/lang/String;I)V

    .line 703
    if-nez p1, :cond_14

    .line 706
    :goto_3
    return-void

    .line 612
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 614
    :cond_3
    if-nez v0, :cond_0

    .line 615
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Cannot initialize URI with empty parameters."

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_4
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/URI;->initialize(Lmf/org/apache/xerces/util/URI;)V

    .line 622
    return-void

    .line 630
    :cond_5
    add-int/lit8 v3, v2, -0x1

    .line 632
    invoke-virtual {p2, v8, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    const/16 v5, 0x3f

    .line 633
    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 634
    invoke-virtual {p2, v7, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 636
    if-nez v2, :cond_8

    .line 639
    :cond_6
    if-nez v2, :cond_a

    .line 640
    :cond_7
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "No scheme found in URI."

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_8
    if-ne v4, v6, :cond_6

    .line 637
    if-ne v5, v6, :cond_6

    if-ne v3, v6, :cond_6

    .line 644
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/util/URI;->initializeScheme(Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 648
    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_b

    .line 649
    :cond_9
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Scheme specific part cannot be empty."

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_a
    if-nez p1, :cond_1

    if-nez v3, :cond_7

    goto :goto_1

    .line 648
    :cond_b
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_9

    goto :goto_1

    .line 653
    :cond_c
    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 654
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "No scheme found in URI."

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_d
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v8, :cond_f

    :cond_e
    move v0, v1

    goto :goto_2

    :cond_f
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_e

    .line 668
    add-int/lit8 v2, v1, 0x2

    move v1, v2

    .line 673
    :goto_4
    if-ge v1, v0, :cond_10

    .line 674
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 675
    if-ne v3, v8, :cond_11

    .line 684
    :cond_10
    if-gt v1, v2, :cond_12

    const-string/jumbo v0, ""

    .line 692
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_2

    :cond_11
    const/16 v4, 0x3f

    .line 675
    if-eq v3, v4, :cond_10

    if-eq v3, v7, :cond_10

    .line 678
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 687
    :cond_12
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/URI;->initializeAuthority(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    goto/16 :goto_2

    .line 688
    :cond_13
    add-int/lit8 v0, v2, -0x2

    goto/16 :goto_2

    .line 704
    :cond_14
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    goto/16 :goto_3
.end method

.method private initialize(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2f

    const/16 v7, 0x23

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 493
    if-nez p2, :cond_2

    move v0, v1

    .line 495
    :goto_0
    if-eqz p1, :cond_3

    .line 504
    :cond_0
    if-eqz v0, :cond_5

    const/16 v2, 0x3a

    .line 512
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 513
    if-ne v2, v6, :cond_6

    .line 537
    if-eqz p1, :cond_d

    .line 550
    :cond_1
    :goto_1
    add-int/lit8 v2, v1, 0x1

    if-lt v2, v0, :cond_e

    move v0, v1

    .line 580
    :goto_2
    invoke-direct {p0, p2, v0}, Lmf/org/apache/xerces/util/URI;->initializePath(Ljava/lang/String;I)V

    .line 587
    if-nez p1, :cond_15

    .line 590
    :goto_3
    return-void

    .line 493
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 495
    :cond_3
    if-nez v0, :cond_0

    .line 496
    if-nez p3, :cond_4

    .line 500
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Cannot initialize URI with empty parameters."

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string/jumbo v0, ""

    .line 497
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 498
    return-void

    .line 505
    :cond_5
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/URI;->initialize(Lmf/org/apache/xerces/util/URI;)V

    .line 506
    return-void

    .line 514
    :cond_6
    add-int/lit8 v3, v2, -0x1

    .line 516
    invoke-virtual {p2, v8, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    const/16 v5, 0x3f

    .line 517
    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 518
    invoke-virtual {p2, v7, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 520
    if-nez v2, :cond_9

    .line 523
    :cond_7
    if-nez v2, :cond_b

    .line 524
    :cond_8
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "No scheme found in URI."

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_9
    if-ne v4, v6, :cond_7

    .line 521
    if-ne v5, v6, :cond_7

    if-ne v3, v6, :cond_7

    .line 528
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/util/URI;->initializeScheme(Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 532
    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_c

    .line 533
    :cond_a
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Scheme specific part cannot be empty."

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_b
    if-nez p1, :cond_1

    if-eqz v3, :cond_1

    if-eqz p3, :cond_8

    goto :goto_1

    .line 532
    :cond_c
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_a

    goto :goto_1

    .line 537
    :cond_d
    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    .line 538
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "No scheme found in URI."

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_e
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v8, :cond_10

    :cond_f
    move v0, v1

    goto/16 :goto_2

    :cond_10
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_f

    .line 552
    add-int/lit8 v2, v1, 0x2

    move v1, v2

    .line 557
    :goto_4
    if-ge v1, v0, :cond_11

    .line 558
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 559
    if-ne v3, v8, :cond_12

    .line 568
    :cond_11
    if-gt v1, v2, :cond_13

    const-string/jumbo v0, ""

    .line 576
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_2

    :cond_12
    const/16 v4, 0x3f

    .line 559
    if-eq v3, v4, :cond_11

    if-eq v3, v7, :cond_11

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 571
    :cond_13
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/URI;->initializeAuthority(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    goto/16 :goto_2

    .line 572
    :cond_14
    add-int/lit8 v0, v2, -0x2

    goto/16 :goto_2

    .line 588
    :cond_15
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    goto/16 :goto_3
.end method

.method private initializeAuthority(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/16 v3, 0x40

    const/16 v8, 0x3a

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 879
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v0, 0x0

    .line 885
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v7, :cond_1

    move v1, v2

    .line 902
    :goto_0
    if-lt v1, v4, :cond_3

    move v5, v2

    move v3, v1

    .line 920
    :goto_1
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 922
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_a

    move v1, v7

    .line 953
    :cond_0
    :goto_2
    invoke-direct {p0, v8, v1, v0}, Lmf/org/apache/xerces/util/URI;->isValidServerBasedAuthority(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 963
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/URI;->isValidRegistryBasedAuthority(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 967
    return v2

    :cond_1
    move v1, v2

    .line 886
    :goto_3
    if-ge v1, v4, :cond_2

    .line 887
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 888
    if-eq v0, v3, :cond_2

    .line 891
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 893
    :cond_2
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 894
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 903
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5b

    if-eq v3, v5, :cond_5

    .line 915
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 916
    if-gt v3, v1, :cond_4

    move v3, v4

    .line 917
    :cond_4
    if-ne v3, v4, :cond_9

    move v5, v2

    goto :goto_1

    :cond_5
    const/16 v3, 0x5d

    .line 904
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 905
    if-ne v3, v7, :cond_6

    move v3, v4

    .line 906
    :cond_6
    add-int/lit8 v5, v3, 0x1

    if-lt v5, v4, :cond_8

    :cond_7
    move v5, v2

    move v3, v4

    .line 913
    goto :goto_1

    .line 906
    :cond_8
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_7

    .line 907
    add-int/lit8 v3, v3, 0x1

    move v5, v6

    .line 909
    goto :goto_1

    :cond_9
    move v5, v6

    .line 917
    goto :goto_1

    .line 924
    :cond_a
    if-nez v5, :cond_b

    move v1, v7

    goto :goto_2

    .line 925
    :cond_b
    add-int/lit8 v3, v3, 0x1

    move v1, v3

    .line 927
    :goto_4
    if-ge v1, v4, :cond_c

    .line 928
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 930
    :cond_c
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 931
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_d

    move v1, v7

    goto :goto_2

    .line 943
    :cond_d
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 944
    if-ne v1, v7, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 945
    :catch_0
    move-exception v1

    const/4 v1, -0x2

    .line 947
    goto :goto_2

    .line 954
    :cond_e
    iput-object v8, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 955
    iput v1, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 956
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 957
    return v6

    .line 964
    :cond_f
    iput-object p1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 965
    return v6
.end method

.method private initializePath(Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3f

    const/16 v6, 0x25

    const/16 v5, 0x23

    const/4 v0, 0x0

    .line 1066
    if-eqz p1, :cond_0

    .line 1073
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1077
    if-lt p2, v3, :cond_1

    move v1, p2

    .line 1143
    :goto_0
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 1146
    if-eq v0, v4, :cond_11

    .line 1173
    :goto_1
    if-eq v0, v5, :cond_17

    .line 1196
    :goto_2
    return-void

    .line 1067
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Cannot initialize path from null string!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1079
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v0

    move v0, p2

    .line 1084
    :goto_3
    if-ge v0, v3, :cond_a

    .line 1085
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1088
    if-eq v1, v6, :cond_4

    .line 1099
    invoke-static {v1}, Lmf/org/apache/xerces/util/URI;->isPathCharacter(C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1106
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1079
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_3

    move v1, v0

    move v0, p2

    .line 1113
    :goto_5
    if-ge v0, v3, :cond_1d

    .line 1114
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1116
    if-ne v1, v4, :cond_b

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0

    :cond_3
    move v1, v0

    move v0, p2

    .line 1084
    goto :goto_3

    .line 1089
    :cond_4
    add-int/lit8 v2, v0, 0x2

    if-lt v2, v3, :cond_6

    .line 1092
    :cond_5
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Path contains invalid escape sequence!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_6
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1091
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1095
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 1100
    :cond_7
    if-ne v1, v4, :cond_8

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0

    :cond_8
    if-eq v1, v5, :cond_9

    .line 1103
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1104
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Path contains invalid character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1103
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v7, v1

    move v1, v0

    move v0, v7

    .line 1101
    goto/16 :goto_0

    :cond_a
    move v7, v1

    move v1, v0

    move v0, v7

    .line 1108
    goto/16 :goto_0

    .line 1116
    :cond_b
    if-eq v1, v5, :cond_c

    .line 1121
    if-eq v1, v6, :cond_d

    .line 1135
    invoke-static {v1}, Lmf/org/apache/xerces/util/URI;->isURICharacter(C)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1139
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    move v7, v1

    move v1, v0

    move v0, v7

    .line 1117
    goto/16 :goto_0

    .line 1122
    :cond_d
    add-int/lit8 v2, v0, 0x2

    if-lt v2, v3, :cond_f

    .line 1125
    :cond_e
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Opaque part contains invalid escape sequence!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1123
    :cond_f
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1124
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1128
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 1136
    :cond_10
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Opaque part contains invalid character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1136
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1147
    :cond_11
    add-int/lit8 v2, v1, 0x1

    move v1, v0

    move v0, v2

    .line 1149
    :goto_7
    if-ge v0, v3, :cond_16

    .line 1150
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1151
    if-eq v1, v5, :cond_16

    .line 1154
    if-eq v1, v6, :cond_12

    .line 1163
    invoke-static {v1}, Lmf/org/apache/xerces/util/URI;->isURICharacter(C)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1167
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1155
    :cond_12
    add-int/lit8 v4, v0, 0x2

    if-lt v4, v3, :cond_14

    .line 1158
    :cond_13
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Query string contains invalid escape sequence!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_14
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1157
    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1161
    add-int/lit8 v0, v0, 0x2

    goto :goto_8

    .line 1164
    :cond_15
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1165
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Query string contains invalid character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1164
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1169
    :cond_16
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    .line 1174
    :cond_17
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 1176
    :goto_9
    if-ge v0, v3, :cond_1c

    .line 1177
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1179
    if-eq v2, v6, :cond_18

    .line 1188
    invoke-static {v2}, Lmf/org/apache/xerces/util/URI;->isURICharacter(C)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1192
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1180
    :cond_18
    add-int/lit8 v2, v0, 0x2

    if-lt v2, v3, :cond_1a

    .line 1183
    :cond_19
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Fragment contains invalid escape sequence!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1181
    :cond_1a
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1182
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1186
    add-int/lit8 v0, v0, 0x2

    goto :goto_a

    .line 1189
    :cond_1b
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Fragment contains invalid character: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1189
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1194
    :cond_1c
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1d
    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_0
.end method

.method private initializeScheme(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 843
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    .line 848
    :goto_0
    if-ge v0, v2, :cond_0

    .line 849
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    .line 850
    if-ne v3, v4, :cond_1

    .line 856
    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 858
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 862
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    .line 864
    return-void

    :cond_1
    const/16 v4, 0x2f

    .line 850
    if-eq v3, v4, :cond_0

    const/16 v4, 0x3f

    .line 851
    if-eq v3, v4, :cond_0

    const/16 v4, 0x23

    if-eq v3, v4, :cond_0

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 859
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "No scheme found in URI."

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAlpha(C)Z
    .locals 1

    .prologue
    const/16 v0, 0x61

    .line 2085
    if-ge p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-ge p0, v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0
.end method

.method private static isAlphanum(C)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x7a

    .line 2094
    if-le p0, v0, :cond_1

    :cond_0
    return v1

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x30

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public static isConformantSchemeName(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1761
    if-nez p0, :cond_1

    .line 1762
    :cond_0
    return v4

    .line 1761
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1765
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/URI;->isAlpha(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1770
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    .line 1771
    :goto_0
    if-ge v0, v2, :cond_4

    .line 1772
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1773
    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isSchemeCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1771
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1766
    :cond_2
    return v4

    .line 1774
    :cond_3
    return v4

    .line 1778
    :cond_4
    return v1
.end method

.method private static isDigit(C)Z
    .locals 1

    .prologue
    const/16 v0, 0x30

    .line 2066
    if-ge p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private static isHex(C)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x66

    .line 2076
    if-le p0, v0, :cond_1

    :cond_0
    return v1

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private static isPathCharacter(C)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x7e

    .line 2150
    if-le p0, v0, :cond_1

    :cond_0
    return v1

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v0, v0, p0

    and-int/lit16 v0, v0, 0xb2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private static isReservedCharacter(C)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x5d

    .line 2104
    if-le p0, v0, :cond_1

    :cond_0
    return v1

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private static isSchemeCharacter(C)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x7a

    .line 2132
    if-le p0, v0, :cond_1

    :cond_0
    return v1

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x34

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private static isURICharacter(C)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x7e

    .line 2123
    if-le p0, v0, :cond_1

    :cond_0
    return v1

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x33

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private static isURIString(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2162
    if-eqz p0, :cond_0

    .line 2165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    .line 2167
    :goto_0
    if-ge v0, v2, :cond_5

    .line 2168
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    .line 2169
    if-eq v3, v4, :cond_1

    .line 2180
    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isURICharacter(C)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2184
    return v1

    .line 2163
    :cond_0
    return v1

    .line 2170
    :cond_1
    add-int/lit8 v3, v0, 0x2

    if-lt v3, v2, :cond_3

    .line 2173
    :cond_2
    return v1

    .line 2171
    :cond_3
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2172
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2176
    add-int/lit8 v0, v0, 0x2

    .line 2167
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2187
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private static isUnreservedCharacter(C)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x7e

    .line 2113
    if-le p0, v0, :cond_1

    :cond_0
    return v1

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x32

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private static isUserinfoCharacter(C)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x7a

    .line 2141
    if-le p0, v0, :cond_1

    :cond_0
    return v1

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x3a

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private isValidRegistryBasedAuthority(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1031
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    .line 1034
    :goto_0
    if-ge v0, v2, :cond_4

    .line 1035
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    .line 1038
    if-eq v3, v4, :cond_0

    .line 1048
    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isPathCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1051
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1039
    :cond_0
    add-int/lit8 v3, v0, 0x2

    if-lt v3, v2, :cond_2

    .line 1042
    :cond_1
    return v1

    .line 1040
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1041
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1044
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1049
    :cond_3
    return v1

    .line 1053
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private isValidServerBasedAuthority(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 984
    invoke-static {p1}, Lmf/org/apache/xerces/util/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 992
    if-ge p2, v0, :cond_2

    .line 993
    :cond_0
    return v1

    .line 985
    :cond_1
    return v1

    :cond_2
    const v0, 0xffff

    .line 992
    if-gt p2, v0, :cond_0

    .line 997
    if-nez p3, :cond_4

    .line 1019
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 1001
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    .line 1003
    :goto_0
    if-ge v0, v2, :cond_3

    .line 1004
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    .line 1005
    if-eq v3, v4, :cond_5

    .line 1013
    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isUserinfoCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1016
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    :cond_5
    add-int/lit8 v3, v0, 0x2

    if-lt v3, v2, :cond_7

    .line 1009
    :cond_6
    return v1

    .line 1007
    :cond_7
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1008
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1011
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1014
    :cond_8
    return v1
.end method

.method public static isWellFormedAddress(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/16 v6, 0x2e

    const/4 v1, 0x0

    .line 1794
    if-eqz p0, :cond_1

    .line 1798
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1799
    if-eqz v3, :cond_2

    const-string/jumbo v0, "["

    .line 1804
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "."

    .line 1809
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1812
    :cond_0
    return v1

    .line 1795
    :cond_1
    return v1

    .line 1800
    :cond_2
    return v1

    .line 1805
    :cond_3
    invoke-static {p0}, Lmf/org/apache/xerces/util/URI;->isWellFormedIPv6Reference(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_4
    const-string/jumbo v0, "-"

    .line 1810
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "-"

    .line 1811
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1818
    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const-string/jumbo v2, "."

    .line 1819
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1823
    :goto_0
    add-int/lit8 v2, v0, 0x1

    if-lt v2, v3, :cond_8

    :cond_5
    const/16 v0, 0xff

    .line 1834
    if-gt v3, v0, :cond_9

    move v2, v1

    move v0, v1

    .line 1843
    :goto_1
    if-ge v2, v3, :cond_10

    .line 1844
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1845
    if-eq v4, v6, :cond_a

    .line 1854
    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1858
    :cond_6
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x3f

    if-gt v0, v4, :cond_f

    .line 1843
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1820
    :cond_7
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    goto :goto_0

    .line 1823
    :cond_8
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/URI;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1824
    invoke-static {p0}, Lmf/org/apache/xerces/util/URI;->isWellFormedIPv4Address(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1835
    :cond_9
    return v1

    .line 1846
    :cond_a
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1849
    add-int/lit8 v0, v2, 0x1

    if-lt v0, v3, :cond_d

    :cond_b
    move v0, v1

    .line 1853
    goto :goto_2

    .line 1847
    :cond_c
    return v1

    .line 1849
    :cond_d
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1850
    return v1

    :cond_e
    const/16 v5, 0x2d

    .line 1854
    if-eq v4, v5, :cond_6

    .line 1855
    return v1

    .line 1859
    :cond_f
    return v1

    .line 1863
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public static isWellFormedIPv4Address(Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/16 v10, 0x32

    const/16 v9, 0x35

    const/4 v8, 0x3

    const/4 v1, 0x0

    .line 1879
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v1

    move v0, v1

    move v2, v1

    .line 1894
    :goto_0
    if-ge v3, v4, :cond_c

    .line 1895
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    .line 1896
    if-eq v5, v6, :cond_1

    .line 1906
    invoke-static {v5}, Lmf/org/apache/xerces/util/URI;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1911
    add-int/lit8 v0, v0, 0x1

    if-gt v0, v8, :cond_8

    .line 1915
    if-eq v0, v8, :cond_9

    .line 1894
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1897
    :cond_1
    if-gtz v3, :cond_3

    .line 1898
    :cond_2
    add-int/lit8 v0, v3, 0x1

    if-lt v0, v4, :cond_5

    .line 1902
    :goto_2
    add-int/lit8 v0, v2, 0x1

    if-gt v0, v8, :cond_6

    move v2, v0

    move v0, v1

    goto :goto_1

    .line 1897
    :cond_3
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/URI;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1899
    :cond_4
    return v1

    .line 1898
    :cond_5
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/URI;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 1903
    :cond_6
    return v1

    .line 1907
    :cond_7
    return v1

    .line 1912
    :cond_8
    return v1

    .line 1916
    :cond_9
    add-int/lit8 v6, v3, -0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1917
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1918
    if-lt v6, v10, :cond_0

    .line 1919
    if-eq v6, v10, :cond_b

    .line 1922
    :cond_a
    return v1

    .line 1920
    :cond_b
    if-lt v7, v9, :cond_0

    .line 1921
    if-ne v7, v9, :cond_a

    if-gt v5, v9, :cond_a

    goto :goto_1

    .line 1926
    :cond_c
    if-eq v2, v8, :cond_d

    return v1

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public static isWellFormedIPv6Reference(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/16 v8, 0x3a

    const/16 v7, 0x8

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1946
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1948
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x2

    .line 1951
    if-gt v0, v2, :cond_1

    .line 1953
    :cond_0
    return v4

    .line 1951
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_0

    .line 1952
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5d

    if-ne v0, v2, :cond_0

    .line 1957
    new-array v2, v5, [I

    .line 1960
    invoke-static {p0, v5, v1, v2}, Lmf/org/apache/xerces/util/URI;->scanHexSequence(Ljava/lang/String;II[I)I

    move-result v0

    .line 1961
    if-eq v0, v6, :cond_3

    .line 1965
    if-eq v0, v1, :cond_4

    .line 1969
    add-int/lit8 v3, v0, 0x1

    if-lt v3, v1, :cond_6

    .line 1990
    :cond_2
    return v4

    .line 1962
    :cond_3
    return v4

    .line 1966
    :cond_4
    aget v0, v2, v4

    if-eq v0, v7, :cond_5

    return v4

    :cond_5
    return v5

    .line 1969
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_2

    .line 1970
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_8

    .line 1985
    aget v2, v2, v4

    const/4 v3, 0x6

    if-eq v2, v3, :cond_b

    :cond_7
    return v4

    .line 1972
    :cond_8
    aget v3, v2, v4

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v4

    if-gt v3, v7, :cond_9

    .line 1975
    add-int/lit8 v0, v0, 0x2

    .line 1977
    if-eq v0, v1, :cond_a

    .line 1994
    aget v3, v2, v4

    .line 1995
    invoke-static {p0, v0, v1, v2}, Lmf/org/apache/xerces/util/URI;->scanHexSequence(Ljava/lang/String;II[I)I

    move-result v0

    .line 2000
    if-ne v0, v1, :cond_c

    :goto_0
    return v5

    .line 1973
    :cond_9
    return v4

    .line 1978
    :cond_a
    return v5

    .line 1986
    :cond_b
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/URI;->isWellFormedIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1985
    return v5

    .line 2001
    :cond_c
    if-ne v0, v6, :cond_e

    .line 2000
    :cond_d
    return v4

    .line 2002
    :cond_e
    aget v2, v2, v4

    if-gt v2, v3, :cond_f

    :goto_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2001
    invoke-static {v0}, Lmf/org/apache/xerces/util/URI;->isWellFormedIPv4Address(Ljava/lang/String;)Z

    move-result v0

    .line 2002
    if-eqz v0, :cond_d

    goto :goto_0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static scanHexSequence(Ljava/lang/String;II[I)I
    .locals 9

    .prologue
    const/16 v8, 0x3a

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v2, -0x1

    const/4 v1, 0x0

    move v0, v1

    move v3, p1

    .line 2029
    :goto_0
    if-ge v3, p2, :cond_b

    .line 2030
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2031
    if-eq v4, v8, :cond_0

    .line 2044
    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2052
    add-int/lit8 v0, v0, 0x1

    if-gt v0, v6, :cond_a

    .line 2029
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2033
    :cond_0
    if-gtz v0, :cond_3

    .line 2037
    :cond_1
    if-nez v0, :cond_4

    .line 2038
    :cond_2
    return v3

    .line 2033
    :cond_3
    aget v4, p3, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, p3, v1

    if-le v4, v7, :cond_1

    .line 2034
    return v2

    .line 2037
    :cond_4
    add-int/lit8 v0, v3, 0x1

    if-lt v0, p2, :cond_5

    :goto_2
    move v0, v1

    .line 2041
    goto :goto_1

    .line 2037
    :cond_5
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_2

    goto :goto_2

    :cond_6
    const/16 v5, 0x2e

    .line 2045
    if-eq v4, v5, :cond_8

    .line 2049
    :cond_7
    return v2

    .line 2045
    :cond_8
    if-ge v0, v6, :cond_7

    if-lez v0, :cond_7

    aget v1, p3, v1

    const/4 v4, 0x6

    if-gt v1, v4, :cond_7

    .line 2046
    sub-int v0, v3, v0

    add-int/lit8 v0, v0, -0x1

    .line 2047
    if-ge v0, p1, :cond_9

    add-int/lit8 v0, v0, 0x1

    :cond_9
    return v0

    .line 2053
    :cond_a
    return v2

    .line 2056
    :cond_b
    if-gtz v0, :cond_d

    :goto_3
    move p2, v2

    :cond_c
    return p2

    :cond_d
    aget v0, p3, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, p3, v1

    if-le v0, v7, :cond_c

    goto :goto_3
.end method


# virtual methods
.method public absolutize(Lmf/org/apache/xerces/util/URI;)V
    .locals 9

    .prologue
    const/16 v7, 0x2f

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 722
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 747
    return-void

    .line 722
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 723
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 724
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 725
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 726
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 727
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getPort()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 728
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getRegBasedAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 729
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 731
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 738
    :cond_2
    :goto_0
    return-void

    .line 732
    :cond_3
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 734
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 735
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    goto :goto_0

    .line 744
    :cond_4
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 752
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 759
    :cond_5
    return-void

    .line 752
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 753
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 754
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 755
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getPort()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 756
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getRegBasedAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_a

    :cond_7
    const-string/jumbo v0, ""

    .line 771
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 774
    if-nez v1, :cond_b

    .line 780
    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_c

    .line 785
    :cond_9
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string/jumbo v1, "/./"

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_d

    .line 790
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 764
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 765
    return-void

    .line 774
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 775
    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 776
    if-eq v2, v6, :cond_9

    .line 777
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_c
    const-string/jumbo v0, "/"

    goto :goto_1

    :cond_d
    const-string/jumbo v1, "/."

    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_3
    const/4 v1, 0x1

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_4
    const-string/jumbo v2, "/../"

    .line 804
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_11

    const-string/jumbo v0, "/../"

    .line 805
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 806
    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 807
    if-ne v0, v6, :cond_f

    .line 817
    add-int/lit8 v0, v2, 0x4

    goto :goto_4

    .line 795
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 808
    :cond_f
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 813
    add-int/lit8 v0, v2, 0x4

    goto :goto_4

    .line 809
    :cond_10
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_11
    const-string/jumbo v0, "/.."

    .line 823
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 830
    :cond_12
    :goto_5
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 831
    return-void

    .line 824
    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 825
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 826
    if-eq v0, v6, :cond_12

    .line 827
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

.method public appendPath(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1578
    if-nez p1, :cond_1

    .line 1579
    :cond_0
    return-void

    .line 1578
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1582
    invoke-static {p1}, Lmf/org/apache/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1587
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_2
    const-string/jumbo v0, "/"

    .line 1588
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1592
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 1611
    :goto_0
    return-void

    .line 1583
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Path contains invalid character!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1587
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1595
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "/"

    .line 1604
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1608
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    .line 1589
    :cond_5
    iput-object p1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "/"

    .line 1596
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1600
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    .line 1597
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    .line 1605
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1686
    instance-of v0, p1, Lmf/org/apache/xerces/util/URI;

    if-nez v0, :cond_1

    .line 1710
    :cond_0
    return v2

    .line 1687
    :cond_1
    check-cast p1, Lmf/org/apache/xerces/util/URI;

    .line 1688
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1689
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1690
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1691
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1692
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1693
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1694
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1695
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1697
    :goto_2
    iget v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    iget v1, p1, Lmf/org/apache/xerces/util/URI;->m_port:I

    if-ne v0, v1, :cond_0

    .line 1698
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1699
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1700
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1701
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1702
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1703
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 1705
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1707
    :goto_5
    const/4 v0, 0x1

    return v0

    .line 1688
    :cond_8
    iget-object v0, p1, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    .line 1691
    :cond_9
    iget-object v0, p1, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_1

    .line 1694
    :cond_a
    iget-object v0, p1, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_2

    .line 1698
    :cond_b
    iget-object v0, p1, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_3

    .line 1701
    :cond_c
    iget-object v0, p1, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-nez v0, :cond_6

    goto :goto_4

    .line 1704
    :cond_d
    iget-object v0, p1, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_5
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1299
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1300
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "//"

    .line 1301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1304
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1320
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1323
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1300
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1306
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 1311
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1313
    iget v1, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1314
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1315
    iget v1, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1307
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1308
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(ZZ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1342
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1344
    if-nez p1, :cond_2

    .line 1349
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 1353
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1344
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1345
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1346
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1349
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1350
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1351
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 1281
    iget v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    return-object v0
.end method

.method public getRegBasedAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1214
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1216
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "//"

    .line 1217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1220
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1236
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1240
    :cond_1
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 1244
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 1249
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 1254
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1216
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1222
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 1227
    :goto_4
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1229
    iget v1, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1230
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1231
    iget v1, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1223
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1224
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1241
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1245
    :cond_6
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1246
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1250
    :cond_7
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1251
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method public getUserinfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    return-object v0
.end method

.method public isAbsoluteURI()Z
    .locals 1

    .prologue
    .line 1750
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isGenericURI()Z
    .locals 1

    .prologue
    .line 1739
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1657
    if-eqz p1, :cond_0

    .line 1660
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/URI;->isGenericURI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1664
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1668
    invoke-static {p1}, Lmf/org/apache/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1673
    iput-object p1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 1675
    :goto_0
    return-void

    .line 1658
    :cond_0
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    goto :goto_0

    .line 1661
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Fragment can only be set for a generic URI!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1665
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Fragment cannot be set when path is null!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1669
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Fragment contains invalid character!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1467
    if-nez p1, :cond_1

    .line 1468
    :cond_0
    if-nez p1, :cond_2

    .line 1471
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 1472
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    const/4 v0, -0x1

    .line 1473
    iput v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 1474
    return-void

    .line 1467
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1476
    invoke-static {p1}, Lmf/org/apache/xerces/util/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1479
    iput-object p1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 1480
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 1481
    return-void

    .line 1469
    :cond_2
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    goto :goto_0

    .line 1477
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Host is not a well formed address!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1553
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1559
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/util/URI;->initializePath(Ljava/lang/String;I)V

    .line 1561
    :goto_0
    return-void

    .line 1554
    :cond_0
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 1555
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 1556
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPort(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1495
    if-gez p1, :cond_2

    :cond_0
    const/4 v0, -0x1

    .line 1501
    if-ne p1, v0, :cond_3

    .line 1504
    :cond_1
    iput p1, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 1505
    return-void

    :cond_2
    const v0, 0xffff

    .line 1495
    if-gt p1, v0, :cond_0

    .line 1496
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1497
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Port cannot be set when host is null!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1502
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Invalid port number!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1625
    if-eqz p1, :cond_0

    .line 1628
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/URI;->isGenericURI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1632
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1636
    invoke-static {p1}, Lmf/org/apache/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1641
    iput-object p1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 1643
    :goto_0
    return-void

    .line 1626
    :cond_0
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    goto :goto_0

    .line 1629
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Query string can only be set for a generic URI!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1633
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Query string cannot be set when path is null!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1637
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Query string contains invalid character!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRegBasedAuthority(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1521
    if-eqz p1, :cond_1

    .line 1527
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 1530
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Registry based authority is not well formed."

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1522
    :cond_1
    iput-object v2, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 1523
    return-void

    .line 1528
    :cond_2
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/URI;->isValidRegistryBasedAuthority(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    .line 1529
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1532
    iput-object p1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 1533
    iput-object v2, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 1534
    iput-object v2, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 1535
    iput v3, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 1536
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1398
    if-eqz p1, :cond_0

    .line 1402
    invoke-static {p1}, Lmf/org/apache/xerces/util/URI;->isConformantSchemeName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1406
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 1407
    return-void

    .line 1399
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Cannot set scheme from null string!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1403
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "The scheme is not conformant."

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserinfo(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1419
    if-eqz p1, :cond_0

    .line 1424
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1432
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1434
    :goto_0
    if-ge v0, v1, :cond_6

    .line 1435
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    .line 1436
    if-eq v2, v3, :cond_2

    .line 1444
    invoke-static {v2}, Lmf/org/apache/xerces/util/URI;->isUserinfoCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1448
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1420
    :cond_0
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 1421
    return-void

    .line 1425
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Userinfo cannot be set when host is null!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1437
    :cond_2
    add-int/lit8 v2, v0, 0x2

    if-lt v2, v1, :cond_4

    .line 1440
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string/jumbo v1, "Userinfo contains invalid escape sequence!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1438
    :cond_4
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1439
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 1445
    :cond_5
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1446
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Userinfo contains invalid character:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1445
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1451
    :cond_6
    iput-object p1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 1452
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1719
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1721
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1725
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1726
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1722
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1723
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
