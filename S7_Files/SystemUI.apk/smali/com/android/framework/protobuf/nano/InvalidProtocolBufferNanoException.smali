.class public Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferNanoException.java"


# static fields
.field private static final serialVersionUID:J = -0x166db9773d0dffacL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method static invalidEndTag()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    .line 74
    const-string/jumbo v1, "Protocol message end-group tag did not match expected tag."

    .line 73
    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
