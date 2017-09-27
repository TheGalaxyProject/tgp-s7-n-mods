.class public Lcom/android/systemui/analytics/SensorLoggerSession;
.super Ljava/lang/Object;
.source "SensorLoggerSession.java"


# instance fields
.field private mEndTimestampMillis:J

.field private mMotionEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:I

.field private mSensorEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartSystemTimeNanos:J

.field private final mStartTimestampMillis:J

.field private mTouchAreaHeight:I

.field private mTouchAreaWidth:I

.field private mType:I


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "startTimestampMillis"    # J
    .param p3, "startSystemTimeNanos"    # J

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mMotionEvents:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mSensorEvents:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mPhoneEvents:Ljava/util/ArrayList;

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mResult:I

    .line 51
    iput-wide p1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartTimestampMillis:J

    .line 52
    iput-wide p3, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartSystemTimeNanos:J

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mType:I

    .line 50
    return-void
.end method

.method private motionEventToProto(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 131
    .local v0, "count":I
    new-instance v3, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;-><init>()V

    .line 132
    .local v3, "proto":Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartSystemTimeNanos:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->setAction(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->setActionIndex(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    .line 135
    new-array v4, v0, [Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 137
    new-instance v2, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;-><init>()V

    .line 138
    .local v2, "p":Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->setX(F)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    .line 139
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->setY(F)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    .line 140
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->setSize(F)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    .line 141
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->setPressure(F)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    .line 142
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->setId(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    .line 143
    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    aput-object v2, v4, v1

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v2    # "p":Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    :cond_0
    return-object v3
.end method

.method private phoneEventToProto(IJ)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 4
    .param p1, "eventType"    # I
    .param p2, "sysTimeNanos"    # J

    .prologue
    .line 114
    new-instance v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;-><init>()V

    .line 115
    .local v0, "proto":Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->setType(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    .line 116
    iget-wide v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartSystemTimeNanos:J

    sub-long v2, p2, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    .line 117
    return-object v0
.end method

.method private sensorEventToProto(Landroid/hardware/SensorEvent;J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    .locals 4
    .param p1, "ev"    # Landroid/hardware/SensorEvent;
    .param p2, "sysTimeNanos"    # J

    .prologue
    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;-><init>()V

    .line 122
    .local v0, "proto":Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->setType(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    .line 123
    iget-wide v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartSystemTimeNanos:J

    sub-long v2, p2, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    .line 124
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->setTimestamp(J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    .line 125
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    .line 126
    return-object v0
.end method


# virtual methods
.method public addMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/analytics/SensorLoggerSession;->motionEventToProto(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    move-result-object v0

    .line 68
    .local v0, "event":Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    iget-object v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mMotionEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public addPhoneEvent(IJ)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "systemTimeNanos"    # J

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/analytics/SensorLoggerSession;->phoneEventToProto(IJ)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    move-result-object v0

    .line 78
    .local v0, "event":Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
    iget-object v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mPhoneEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public addSensorEvent(Landroid/hardware/SensorEvent;J)V
    .locals 2
    .param p1, "eventOrig"    # Landroid/hardware/SensorEvent;
    .param p2, "systemTimeNanos"    # J

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/analytics/SensorLoggerSession;->sensorEventToProto(Landroid/hardware/SensorEvent;J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    move-result-object v0

    .line 73
    .local v0, "event":Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    iget-object v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mSensorEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public end(JI)V
    .locals 1
    .param p1, "endTimestampMillis"    # J
    .param p3, "result"    # I

    .prologue
    .line 57
    iput p3, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mResult:I

    .line 58
    iput-wide p1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mEndTimestampMillis:J

    .line 56
    return-void
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mResult:I

    return v0
.end method

.method public getStartTimestampMillis()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartTimestampMillis:J

    return-wide v0
.end method

.method public setTouchArea(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mTouchAreaWidth:I

    .line 150
    iput p2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mTouchAreaHeight:I

    .line 148
    return-void
.end method

.method public toProto()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
    .locals 6

    .prologue
    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;-><init>()V

    .line 100
    .local v0, "proto":Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
    iget-wide v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartTimestampMillis:J

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->setStartTimestampMillis(J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;

    .line 101
    iget-wide v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mEndTimestampMillis:J

    iget-wide v4, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartTimestampMillis:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->setDurationMillis(J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;

    .line 102
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->setBuild(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;

    .line 103
    iget v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mResult:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->setResult(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;

    .line 104
    iget v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mType:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->setType(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;

    .line 105
    iget-object v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mSensorEvents:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    .line 106
    iget-object v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mMotionEvents:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    .line 107
    iget-object v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mPhoneEvents:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    .line 108
    iget v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mTouchAreaWidth:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->setTouchAreaWidth(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;

    .line 109
    iget v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mTouchAreaHeight:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->setTouchAreaHeight(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;

    .line 110
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Session{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mStartTimestampMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartTimestampMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v1, ", mStartSystemTimeNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartSystemTimeNanos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v1, ", mEndTimestampMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mEndTimestampMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    const-string/jumbo v1, ", mResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string/jumbo v1, ", mTouchAreaHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mTouchAreaHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string/jumbo v1, ", mTouchAreaWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mTouchAreaWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v1, ", mMotionEvents=[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mMotionEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v1, ", mSensorEvents=[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mSensorEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v1, ", mPhoneEvents=[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mPhoneEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
