.class public final Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;


# instance fields
.field private bitField0_:I

.field private timeOffsetNanos_:J

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1050
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1051
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    .line 1050
    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 2

    .prologue
    .line 997
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    if-nez v0, :cond_1

    .line 998
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1000
    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    if-nez v0, :cond_0

    .line 1001
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    sput-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1005
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    return-object v0

    .line 998
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1055
    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    .line 1056
    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    .line 1057
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    .line 1058
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->cachedSize:I

    .line 1059
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 1076
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1077
    .local v0, "size":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1079
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    const/4 v2, 0x1

    .line 1078
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1081
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1083
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    const/4 v1, 0x2

    .line 1082
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1085
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1093
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1094
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1098
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1099
    return-object p0

    .line 1096
    :sswitch_0
    return-object p0

    .line 1104
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1105
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1135
    :pswitch_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    .line 1136
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    goto :goto_0

    .line 1142
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    .line 1143
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    goto :goto_0

    .line 1094
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 1105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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
    .line 1089
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    move-result-object v0

    return-object v0
.end method

.method public setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1035
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    .line 1036
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    .line 1037
    return-object p0
.end method

.method public setType(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1016
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    .line 1017
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    .line 1018
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1065
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1066
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1068
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1069
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1071
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1064
    return-void
.end method
