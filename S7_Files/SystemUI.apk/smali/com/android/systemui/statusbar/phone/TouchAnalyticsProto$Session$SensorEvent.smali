.class public final Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SensorEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;


# instance fields
.field private bitField0_:I

.field private timeOffsetNanos_:J

.field private timestamp_:J

.field private type_:I

.field public values:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 816
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    .line 815
    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    .locals 2

    .prologue
    .line 740
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    if-nez v0, :cond_1

    .line 741
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 743
    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    if-nez v0, :cond_0

    .line 744
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    sput-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 748
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    return-object v0

    .line 741
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 820
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    .line 821
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->type_:I

    .line 822
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos_:J

    .line 823
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    .line 824
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timestamp_:J

    .line 825
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->cachedSize:I

    .line 826
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x1

    .line 851
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v1

    .line 852
    .local v1, "size":I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 854
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->type_:I

    .line 853
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 856
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 858
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos_:J

    const/4 v4, 0x2

    .line 857
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 860
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v2, v2

    if-lez v2, :cond_2

    .line 861
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x4

    .line 862
    .local v0, "dataSize":I
    add-int/2addr v1, v0

    .line 863
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 865
    .end local v0    # "dataSize":I
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 867
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timestamp_:J

    .line 866
    invoke-static {v5, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 869
    :cond_3
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    .locals 10
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 877
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v5

    .line 878
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 882
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 883
    return-object p0

    .line 880
    :sswitch_0
    return-object p0

    .line 888
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 889
    .local v6, "value":I
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 895
    :pswitch_1
    iput v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->type_:I

    .line 896
    iget v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    goto :goto_0

    .line 902
    .end local v6    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos_:J

    .line 903
    iget v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    goto :goto_0

    .line 908
    :sswitch_3
    const/16 v8, 0x1d

    .line 907
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 909
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    if-nez v8, :cond_2

    move v1, v7

    .line 910
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [F

    .line 911
    .local v4, "newArray":[F
    if-eqz v1, :cond_1

    .line 912
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 914
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 915
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    aput v8, v4, v1

    .line 916
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 914
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 909
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v1, v8

    goto :goto_1

    .line 919
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    aput v8, v4, v1

    .line 920
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    goto :goto_0

    .line 924
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 925
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 926
    .local v3, "limit":I
    div-int/lit8 v0, v2, 0x4

    .line 927
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    if-nez v8, :cond_5

    move v1, v7

    .line 928
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v4, v8, [F

    .line 929
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_4

    .line 930
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 932
    :cond_4
    :goto_4
    array-length v8, v4

    if-ge v1, v8, :cond_6

    .line 933
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    aput v8, v4, v1

    .line 932
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 927
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v1, v8

    goto :goto_3

    .line 935
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_6
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    .line 936
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 940
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[F
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timestamp_:J

    .line 941
    iget v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    goto/16 :goto_0

    .line 878
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_4
        0x1d -> :sswitch_3
        0x20 -> :sswitch_5
    .end sparse-switch

    .line 889
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
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
    .line 873
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    move-result-object v0

    return-object v0
.end method

.method public setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 778
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos_:J

    .line 779
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    .line 780
    return-object p0
.end method

.method public setTimestamp(J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 800
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timestamp_:J

    .line 801
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    .line 802
    return-object p0
.end method

.method public setType(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 759
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->type_:I

    .line 760
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    .line 761
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 832
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 833
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->type_:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 835
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 836
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos_:J

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 838
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v1, v1

    if-lez v1, :cond_2

    .line 839
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 840
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    aget v1, v1, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 839
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 843
    .end local v0    # "i":I
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 844
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timestamp_:J

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 846
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 831
    return-void
.end method
