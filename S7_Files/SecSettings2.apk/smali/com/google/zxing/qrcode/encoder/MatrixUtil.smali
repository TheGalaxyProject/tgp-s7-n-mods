.class final Lcom/google/zxing/qrcode/encoder/MatrixUtil;
.super Ljava/lang/Object;
.source "MatrixUtil.java"


# static fields
.field private static final POSITION_ADJUSTMENT_PATTERN:[[I

.field private static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

.field private static final POSITION_DETECTION_PATTERN:[[I

.field private static final TYPE_INFO_COORDINATES:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x6

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v0, 0x7

    .line 34
    new-array v0, v0, [[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v5, v1, v5

    aput v5, v1, v9

    const/4 v2, 0x3

    aput v5, v1, v2

    const/4 v2, 0x4

    aput v5, v1, v2

    const/4 v2, 0x5

    aput v5, v1, v2

    aput v5, v1, v8

    aput-object v1, v0, v7

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v7, v1, v5

    aput v7, v1, v9

    const/4 v2, 0x3

    aput v7, v1, v2

    const/4 v2, 0x4

    aput v7, v1, v2

    const/4 v2, 0x5

    aput v7, v1, v2

    aput v5, v1, v8

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v7, v1, v5

    aput v5, v1, v9

    const/4 v2, 0x3

    aput v5, v1, v2

    const/4 v2, 0x4

    aput v5, v1, v2

    const/4 v2, 0x5

    aput v7, v1, v2

    aput v5, v1, v8

    aput-object v1, v0, v9

    const/4 v1, 0x3

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v5, v2, v7

    aput v7, v2, v5

    aput v5, v2, v9

    const/4 v3, 0x3

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v5, v2, v3

    const/4 v3, 0x5

    aput v7, v2, v3

    aput v5, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v5, v2, v7

    aput v7, v2, v5

    aput v5, v2, v9

    const/4 v3, 0x3

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v5, v2, v3

    const/4 v3, 0x5

    aput v7, v2, v3

    aput v5, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v5, v2, v7

    aput v7, v2, v5

    aput v7, v2, v9

    const/4 v3, 0x3

    aput v7, v2, v3

    const/4 v3, 0x4

    aput v7, v2, v3

    const/4 v3, 0x5

    aput v7, v2, v3

    aput v5, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v5, v1, v5

    aput v5, v1, v9

    const/4 v2, 0x3

    aput v5, v1, v2

    const/4 v2, 0x4

    aput v5, v1, v2

    const/4 v2, 0x5

    aput v5, v1, v2

    aput v5, v1, v8

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    const/4 v0, 0x5

    .line 44
    new-array v0, v0, [[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v5, v1, v5

    aput v5, v1, v9

    const/4 v2, 0x3

    aput v5, v1, v2

    const/4 v2, 0x4

    aput v5, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v7, v1, v5

    aput v7, v1, v9

    const/4 v2, 0x3

    aput v7, v1, v2

    const/4 v2, 0x4

    aput v5, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v7, v1, v5

    aput v5, v1, v9

    const/4 v2, 0x3

    aput v7, v1, v2

    const/4 v2, 0x4

    aput v5, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x3

    const/4 v2, 0x5

    new-array v2, v2, [I

    aput v5, v2, v7

    aput v7, v2, v5

    aput v7, v2, v9

    const/4 v3, 0x3

    aput v7, v2, v3

    const/4 v3, 0x4

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x5

    new-array v2, v2, [I

    aput v5, v2, v7

    aput v5, v2, v5

    aput v5, v2, v9

    const/4 v3, 0x3

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v5, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    const/16 v0, 0x28

    .line 53
    new-array v0, v0, [[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v6, v1, v7

    aput v6, v1, v5

    aput v6, v1, v9

    const/4 v2, 0x3

    aput v6, v1, v2

    const/4 v2, 0x4

    aput v6, v1, v2

    const/4 v2, 0x5

    aput v6, v1, v2

    aput v6, v1, v8

    aput-object v1, v0, v7

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v8, v1, v7

    const/16 v2, 0x12

    aput v2, v1, v5

    aput v6, v1, v9

    const/4 v2, 0x3

    aput v6, v1, v2

    const/4 v2, 0x4

    aput v6, v1, v2

    const/4 v2, 0x5

    aput v6, v1, v2

    aput v6, v1, v8

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v8, v1, v7

    const/16 v2, 0x16

    aput v2, v1, v5

    aput v6, v1, v9

    const/4 v2, 0x3

    aput v6, v1, v2

    const/4 v2, 0x4

    aput v6, v1, v2

    const/4 v2, 0x5

    aput v6, v1, v2

    aput v6, v1, v8

    aput-object v1, v0, v9

    const/4 v1, 0x3

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    aput v6, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    aput v6, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x22

    aput v3, v2, v5

    aput v6, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v8, v1, v7

    const/16 v2, 0x16

    aput v2, v1, v5

    const/16 v2, 0x26

    aput v2, v1, v9

    const/4 v2, 0x3

    aput v6, v1, v2

    const/4 v2, 0x4

    aput v6, v1, v2

    const/4 v2, 0x5

    aput v6, v1, v2

    aput v6, v1, v8

    aput-object v1, v0, v8

    const/4 v1, 0x7

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x18

    aput v3, v2, v5

    const/16 v3, 0x2a

    aput v3, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x2e

    aput v3, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1c

    aput v3, v2, v5

    const/16 v3, 0x32

    aput v3, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x20

    aput v3, v2, v5

    const/16 v3, 0x3a

    aput v3, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x22

    aput v3, v2, v5

    const/16 v3, 0x3e

    aput v3, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x2e

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x42

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x30

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x46

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x32

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4a

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4e

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x38

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x52

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x3a

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x56

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x22

    aput v3, v2, v5

    const/16 v3, 0x3e

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x5a

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1c

    aput v3, v2, v5

    const/16 v3, 0x32

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x48

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x5e

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x32

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4a

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x62

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4e

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x66

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1c

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x50

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x6a

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x20

    aput v3, v2, v5

    const/16 v3, 0x3a

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x54

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x6e

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x3a

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x56

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x72

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x22

    aput v3, v2, v5

    const/16 v3, 0x3e

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x5a

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x76

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x32

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4a

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x62

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x7a

    aput v4, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4e

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x66

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x7e

    aput v4, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x34

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4e

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x68

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x82

    aput v4, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x38

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x52

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x6c

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x86

    aput v4, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x22

    aput v3, v2, v5

    const/16 v3, 0x3c

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x56

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x70

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x8a

    aput v4, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x3a

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x56

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x72

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x8e

    aput v4, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x22

    aput v3, v2, v5

    const/16 v3, 0x3e

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x5a

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x76

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x92

    aput v4, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4e

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x66

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x7e

    aput v4, v2, v3

    const/16 v3, 0x96

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x18

    aput v3, v2, v5

    const/16 v3, 0x32

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4c

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x66

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x80

    aput v4, v2, v3

    const/16 v3, 0x9a

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1c

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x50

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x6a

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x84

    aput v4, v2, v3

    const/16 v3, 0x9e

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x20

    aput v3, v2, v5

    const/16 v3, 0x3a

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x54

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x6e

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x88

    aput v4, v2, v3

    const/16 v3, 0xa2

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x52

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x6e

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x8a

    aput v4, v2, v3

    const/16 v3, 0xa6

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x3a

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x56

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x72

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x8e

    aput v4, v2, v3

    const/16 v3, 0xaa

    aput v3, v2, v8

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    const/16 v0, 0xf

    .line 97
    new-array v0, v0, [[I

    new-array v1, v9, [I

    const/16 v2, 0x8

    aput v2, v1, v7

    aput v7, v1, v5

    aput-object v1, v0, v7

    new-array v1, v9, [I

    const/16 v2, 0x8

    aput v2, v1, v7

    aput v5, v1, v5

    aput-object v1, v0, v5

    new-array v1, v9, [I

    const/16 v2, 0x8

    aput v2, v1, v7

    aput v9, v1, v5

    aput-object v1, v0, v9

    const/4 v1, 0x3

    new-array v2, v9, [I

    const/16 v3, 0x8

    aput v3, v2, v7

    const/4 v3, 0x3

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v9, [I

    const/16 v3, 0x8

    aput v3, v2, v7

    const/4 v3, 0x4

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v9, [I

    const/16 v3, 0x8

    aput v3, v2, v7

    const/4 v3, 0x5

    aput v3, v2, v5

    aput-object v2, v0, v1

    new-array v1, v9, [I

    const/16 v2, 0x8

    aput v2, v1, v7

    const/4 v2, 0x7

    aput v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x7

    new-array v2, v9, [I

    const/16 v3, 0x8

    aput v3, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v9, [I

    const/4 v3, 0x7

    aput v3, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v9, [I

    const/4 v3, 0x5

    aput v3, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v9, [I

    const/4 v3, 0x4

    aput v3, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v9, [I

    const/4 v3, 0x3

    aput v3, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v9, [I

    aput v9, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v9, [I

    aput v5, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v9, [I

    aput v7, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 0
    .param p0, "dataBits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p2, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p3, "maskPattern"    # I
    .param p4, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 138
    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedBasicPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 140
    invoke-static {p1, p3, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 142
    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedVersionInfo(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 144
    invoke-static {p0, p3, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 145
    return-void
.end method

.method static calculateBCHCode(II)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "poly"    # I

    .prologue
    .line 310
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v0

    .line 311
    .local v0, "msbSetInPoly":I
    add-int/lit8 v1, v0, -0x1

    shl-int/2addr p0, v1

    .line 313
    :goto_0
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 317
    return p0

    .line 314
    :cond_0
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v1

    sub-int/2addr v1, v0

    shl-int v1, p1, v1

    xor-int/2addr p0, v1

    goto :goto_0
.end method

.method static clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 1
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    .line 127
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->clear(B)V

    .line 128
    return-void
.end method

.method static embedBasicPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 0
    .param p0, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p1, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 157
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 160
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedPositionAdjustmentPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 162
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 163
    return-void
.end method

.method private static embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 3
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 378
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 382
    return-void

    .line 379
    :cond_0
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0
.end method

.method static embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 10
    .param p0, "dataBits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "maskPattern"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .local v1, "bitIndex":I
    const/4 v2, -0x1

    .line 226
    .local v2, "direction":I
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 227
    .local v4, "x":I
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 228
    .local v6, "y":I
    :goto_0
    if-gtz v4, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    if-ne v1, v7, :cond_a

    .line 266
    return-void

    :cond_0
    const/4 v8, 0x6

    .line 230
    if-eq v4, v8, :cond_2

    .line 233
    :goto_1
    if-gez v6, :cond_3

    .line 258
    :cond_1
    neg-int v2, v2

    .line 259
    add-int/2addr v6, v2

    .line 260
    add-int/lit8 v4, v4, -0x2

    goto :goto_0

    .line 231
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 233
    :cond_3
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v8

    if-ge v6, v8, :cond_1

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    const/4 v8, 0x2

    .line 234
    if-lt v3, v8, :cond_4

    .line 256
    add-int/2addr v6, v2

    goto :goto_1

    .line 235
    :cond_4
    sub-int v5, v4, v3

    .line 237
    .local v5, "xx":I
    invoke-virtual {p2, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v8

    invoke-static {v8}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 241
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    if-lt v1, v8, :cond_7

    .line 247
    const/4 v0, 0x0

    :goto_3
    const/4 v8, -0x1

    .line 251
    if-ne p1, v8, :cond_8

    .line 254
    :cond_5
    :goto_4
    invoke-virtual {p2, v5, v6, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 234
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 242
    :cond_7
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    .line 243
    .local v0, "bit":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 251
    .end local v0    # "bit":Z
    :cond_8
    invoke-static {p1, v5, v6}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->getDataMaskBit(III)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 252
    if-eqz v0, :cond_9

    move v0, v7

    .restart local v0    # "bit":Z
    :goto_5
    goto :goto_4

    .end local v0    # "bit":Z
    :cond_9
    const/4 v0, 0x1

    goto :goto_5

    .line 264
    .end local v3    # "i":I
    .end local v5    # "xx":I
    :cond_a
    new-instance v7, Lcom/google/zxing/WriterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Not all bits consumed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 3
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    const/16 v1, 0x8

    .line 387
    if-lt v0, v1, :cond_0

    .line 393
    return-void

    .line 388
    :cond_0
    add-int v1, p0, v0

    invoke-virtual {p2, v1, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    add-int v1, p0, v0

    invoke-virtual {p2, v1, p1, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_1
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1}, Lcom/google/zxing/WriterException;-><init>()V

    throw v1
.end method

.method private static embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 6
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x0

    .line 410
    .local v1, "y":I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 415
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 411
    .local v0, "x":I
    :goto_1
    if-lt v0, v5, :cond_1

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    :cond_1
    add-int v2, p0, v0

    add-int v3, p1, v1

    sget-object v4, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    invoke-virtual {p2, v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 6
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    const/4 v5, 0x7

    const/4 v1, 0x0

    .line 418
    .local v1, "y":I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 423
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 419
    .local v0, "x":I
    :goto_1
    if-lt v0, v5, :cond_1

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    :cond_1
    add-int v2, p0, v0

    add-int v3, p1, v1

    sget-object v4, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    invoke-virtual {p2, v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x0

    .line 428
    sget-object v1, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v1, v1, v2

    array-length v0, v1

    .line 430
    .local v0, "pdpWidth":I
    invoke-static {v2, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 432
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 434
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v2, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 439
    invoke-static {v2, v3, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 441
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {v1, v3, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 444
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {v2, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 449
    invoke-static {v3, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 451
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 453
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-static {v3, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 455
    return-void
.end method

.method private static embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    const/4 v3, 0x6

    const/16 v1, 0x8

    .line 363
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    if-lt v1, v2, :cond_0

    .line 374
    return-void

    .line 364
    :cond_0
    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v0, v2, 0x2

    .line 366
    .local v0, "bit":I
    invoke-virtual {p0, v1, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 363
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {p0, v1, v3, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    goto :goto_1

    .line 371
    :cond_2
    invoke-virtual {p0, v3, v1, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    goto :goto_2
.end method

.method static embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 10
    .param p0, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p1, "maskPattern"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    .line 168
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 169
    .local v2, "typeInfoBits":Lcom/google/zxing/common/BitArray;
    invoke-static {p0, p1, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V

    const/4 v1, 0x0

    .line 171
    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    if-lt v1, v7, :cond_0

    .line 193
    return-void

    .line 174
    :cond_0
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v1

    invoke-virtual {v2, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    .line 177
    .local v0, "bit":Z
    sget-object v7, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v7, v7, v1

    const/4 v8, 0x0

    aget v3, v7, v8

    .line 178
    .local v3, "x1":I
    sget-object v7, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v7, v7, v1

    const/4 v8, 0x1

    aget v5, v7, v8

    .line 179
    .local v5, "y1":I
    invoke-virtual {p2, v3, v5, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 181
    if-lt v1, v9, :cond_1

    .line 189
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x7

    add-int/lit8 v8, v1, -0x8

    add-int v6, v7, v8

    .line 190
    .local v6, "y2":I
    invoke-virtual {p2, v9, v6, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 171
    .end local v6    # "y2":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    add-int/lit8 v4, v7, -0x1

    .line 185
    .local v4, "x2":I
    invoke-virtual {p2, v4, v9, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    goto :goto_1
.end method

.method private static embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 3
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, "y":I
    :goto_0
    const/4 v1, 0x7

    .line 398
    if-lt v0, v1, :cond_0

    .line 404
    return-void

    .line 399
    :cond_0
    add-int v1, p1, v0

    invoke-virtual {p2, p0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    add-int v1, p1, v0

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_1
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1}, Lcom/google/zxing/WriterException;-><init>()V

    throw v1
.end method

.method static findMSBSet(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 275
    .local v0, "numDigits":I
    :goto_0
    if-nez p0, :cond_0

    .line 279
    return v0

    .line 276
    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isEmpty(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    const/4 v0, -0x1

    .line 357
    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V
    .locals 6
    .param p0, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p1, "maskPattern"    # I
    .param p2, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xf

    .line 325
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->getBits()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    or-int v2, v3, p1

    .local v2, "typeInfo":I
    const/4 v3, 0x5

    .line 329
    invoke-virtual {p2, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v3, 0x537

    .line 331
    invoke-static {v2, v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v0

    .local v0, "bchCode":I
    const/16 v3, 0xa

    .line 332
    invoke-virtual {p2, v0, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 334
    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1}, Lcom/google/zxing/common/BitArray;-><init>()V

    .local v1, "maskBits":Lcom/google/zxing/common/BitArray;
    const/16 v3, 0x5412

    .line 335
    invoke-virtual {v1, v3, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 336
    invoke-virtual {p2, v1}, Lcom/google/zxing/common/BitArray;->xor(Lcom/google/zxing/common/BitArray;)V

    .line 338
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 341
    return-void

    .line 326
    .end local v0    # "bchCode":I
    .end local v1    # "maskBits":Lcom/google/zxing/common/BitArray;
    .end local v2    # "typeInfo":I
    :cond_0
    new-instance v3, Lcom/google/zxing/WriterException;

    const-string/jumbo v4, "Invalid mask pattern"

    invoke-direct {v3, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 339
    .restart local v0    # "bchCode":I
    .restart local v1    # "maskBits":Lcom/google/zxing/common/BitArray;
    .restart local v2    # "typeInfo":I
    :cond_1
    new-instance v3, Lcom/google/zxing/WriterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "should not happen but we got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static makeVersionInfoBits(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/common/BitArray;)V
    .locals 4
    .param p0, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 347
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v1

    const/16 v2, 0x1f25

    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v0

    .local v0, "bchCode":I
    const/16 v1, 0xc

    .line 348
    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 350
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 353
    return-void

    .line 351
    :cond_0
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "should not happen but we got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static maybeEmbedPositionAdjustmentPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 10
    .param p0, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p1, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    const/4 v9, -0x1

    .line 459
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 463
    .local v2, "index":I
    sget-object v7, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v0, v7, v2

    .line 464
    .local v0, "coordinates":[I
    sget-object v7, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v7, v7, v2

    array-length v4, v7

    .local v4, "numCoordinates":I
    const/4 v1, 0x0

    .line 465
    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_1

    .line 480
    return-void

    .line 460
    .end local v0    # "coordinates":[I
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v4    # "numCoordinates":I
    :cond_0
    return-void

    .restart local v0    # "coordinates":[I
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v4    # "numCoordinates":I
    :cond_1
    const/4 v3, 0x0

    .line 466
    .local v3, "j":I
    :goto_1
    if-lt v3, v4, :cond_2

    .line 465
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    :cond_2
    aget v6, v0, v1

    .line 468
    .local v6, "y":I
    aget v5, v0, v3

    .line 469
    .local v5, "x":I
    if-ne v5, v9, :cond_4

    .line 466
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 469
    :cond_4
    if-eq v6, v9, :cond_3

    .line 473
    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 476
    add-int/lit8 v7, v5, -0x2

    add-int/lit8 v8, v6, -0x2

    invoke-static {v7, v8, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    goto :goto_2
.end method

.method static maybeEmbedVersionInfo(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 7
    .param p0, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p1, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v5

    const/4 v6, 0x7

    if-lt v5, v6, :cond_0

    .line 201
    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 202
    .local v4, "versionInfoBits":Lcom/google/zxing/common/BitArray;
    invoke-static {p0, v4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeVersionInfoBits(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/common/BitArray;)V

    const/16 v1, 0x11

    .local v1, "bitIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x6

    .line 205
    if-lt v2, v5, :cond_1

    .line 216
    return-void

    .line 199
    .end local v1    # "bitIndex":I
    .end local v2    # "i":I
    .end local v4    # "versionInfoBits":Lcom/google/zxing/common/BitArray;
    :cond_0
    return-void

    .restart local v1    # "bitIndex":I
    .restart local v2    # "i":I
    .restart local v4    # "versionInfoBits":Lcom/google/zxing/common/BitArray;
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/4 v5, 0x3

    .line 206
    if-lt v3, v5, :cond_2

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {v4, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    .line 209
    .local v0, "bit":Z
    add-int/lit8 v1, v1, -0x1

    .line 211
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v2, v5, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 213
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v5, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
