.class public Lmf/org/apache/xml/serialize/EncodingInfo;
.super Ljava/lang/Object;
.source "EncodingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;,
        Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;
    }
.end annotation


# instance fields
.field private fArgsForMethod:[Ljava/lang/Object;

.field fCharToByteConverter:Ljava/lang/Object;

.field fCharsetEncoder:Ljava/lang/Object;

.field fHaveTriedCToB:Z

.field fHaveTriedCharsetEncoder:Z

.field ianaName:Ljava/lang/String;

.field javaName:Ljava/lang/String;

.field lastPrintable:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    .line 48
    iput-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;

    .line 51
    iput-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharToByteConverter:Ljava/lang/Object;

    .line 56
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCToB:Z

    .line 59
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCharsetEncoder:Z

    .line 65
    iput-object p1, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->ianaName:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lmf/org/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    .line 67
    iput p3, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->lastPrintable:I

    .line 68
    return-void
.end method

.method private isPrintable0(C)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 156
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharToByteConverter:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 176
    :goto_2
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v0, v1

    .line 177
    # getter for: Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgCanConvertMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->access$2()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharToByteConverter:Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    return v0

    .line 119
    :cond_1
    # getter for: Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgNIOCharsetAvailable:Z
    invoke-static {}, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->access$0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCharsetEncoder:Z

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 125
    :goto_3
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 126
    # getter for: Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetForNameMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->access$1()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 127
    # getter for: Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->access$2()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCharsetEncoder:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 137
    iput-boolean v5, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCharsetEncoder:Z

    goto :goto_0

    .line 121
    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    goto :goto_3

    .line 128
    :cond_3
    :try_start_2
    # getter for: Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->access$3()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 143
    :cond_4
    :try_start_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v0, v1

    .line 144
    # getter for: Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->access$4()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    return v0

    :catch_1
    move-exception v0

    .line 148
    iput-object v4, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;

    .line 149
    iput-boolean v3, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCharsetEncoder:Z

    goto/16 :goto_1

    .line 157
    :cond_5
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCToB:Z

    if-eqz v0, :cond_7

    .line 159
    :cond_6
    return v3

    .line 157
    :cond_7
    # getter for: Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgConvertersAvailable:Z
    invoke-static {}, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->access$0()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 166
    :goto_4
    :try_start_4
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 167
    # getter for: Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgGetConverterMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->access$1()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharToByteConverter:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 168
    :catch_2
    move-exception v0

    .line 171
    iput-boolean v5, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCToB:Z

    .line 172
    return v3

    .line 162
    :cond_8
    new-array v0, v5, [Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    goto :goto_4

    .line 177
    :catch_3
    move-exception v0

    .line 182
    iput-object v4, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharToByteConverter:Ljava/lang/Object;

    .line 183
    iput-boolean v3, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCToB:Z

    .line 184
    return v3
.end method

.method public static testJavaEncodingName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x5

    .line 191
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    .line 192
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 193
    return-void
.end method


# virtual methods
.method public getIANAName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->ianaName:Ljava/lang/String;

    return-object v0
.end method

.method public getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->ianaName:Ljava/lang/String;

    invoke-static {v0}, Lmf/org/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 94
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v0

    .line 93
    :cond_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string/jumbo v1, "UTF8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public isPrintable(C)Z
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->lastPrintable:I

    if-le p1, v0, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable0(C)Z

    move-result v0

    return v0

    .line 104
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
