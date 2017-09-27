.class public final Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoundingBox"
.end annotation


# instance fields
.field private bitField0_:I

.field private height_:F

.field private width_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    .line 95
    return-void
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    .line 101
    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->width_:F

    .line 102
    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->height_:F

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->cachedSize:I

    .line 104
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 121
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 122
    .local v0, "size":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 124
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->width_:F

    const/4 v2, 0x1

    .line 123
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 128
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->height_:F

    const/4 v2, 0x2

    .line 127
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 130
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 139
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 143
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    return-object p0

    .line 141
    :sswitch_0
    return-object p0

    .line 149
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->width_:F

    .line 150
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    goto :goto_0

    .line 154
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->height_:F

    .line 155
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    goto :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 111
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->width_:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 113
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 114
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->height_:F

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 116
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 109
    return-void
.end method
