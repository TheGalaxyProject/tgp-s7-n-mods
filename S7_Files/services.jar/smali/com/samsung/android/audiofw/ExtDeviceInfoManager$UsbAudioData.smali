.class Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;
.super Ljava/lang/Object;
.source "ExtDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/audiofw/ExtDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsbAudioData"
.end annotation


# instance fields
.field private cardNumber:Ljava/lang/String;

.field private channels:Ljava/lang/String;

.field private deviceNumber:Ljava/lang/String;

.field private format:I

.field private hascapture:Z

.field private hasmidi:Z

.field private hasplayback:Z

.field private isSmartDock:Z

.field private samplingRate2:Ljava/lang/String;

.field private samplingRate24:I

.field private samplingRate6:Ljava/lang/String;

.field private state:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;-><init>()V

    return-void
.end method


# virtual methods
.method public get24Format()I
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 149
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 150
    const/4 v0, 0x3

    return v0

    .line 151
    :cond_0
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v2, :cond_1

    .line 152
    return v2

    .line 153
    :cond_1
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 154
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->channels:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->deviceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getHasCapture()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hascapture:Z

    return v0
.end method

.method public getHasMIDI()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hasmidi:Z

    return v0
.end method

.method public getHasPlayback()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hasplayback:Z

    return v0
.end method

.method public getIsSmartdock()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->isSmartDock:Z

    return v0
.end method

.method public getSamplingRate(I)Ljava/lang/String;
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 118
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate2:Ljava/lang/String;

    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate6:Ljava/lang/String;

    return-object v0
.end method

.method public getSamplingRate24()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate24:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->state:I

    return v0
.end method

.method public getSupportedPCMFormat()I
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 161
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    if-ne v0, v1, :cond_0

    .line 162
    return v5

    .line 163
    :cond_0
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    if-ne v0, v3, :cond_2

    .line 164
    :cond_1
    const/16 v0, 0x18

    return v0

    .line 163
    :cond_2
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    if-eq v0, v4, :cond_1

    .line 165
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_5

    .line 166
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v0, v0, 0x2

    if-eq v0, v2, :cond_3

    .line 167
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_4

    .line 169
    :cond_3
    const/16 v0, 0x28

    return v0

    .line 168
    :cond_4
    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    and-int/lit8 v0, v0, 0x8

    if-eq v0, v4, :cond_3

    .line 172
    :cond_5
    return v5
.end method

.method public setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZII)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "channels"    # Ljava/lang/String;
    .param p3, "samplingRate2"    # Ljava/lang/String;
    .param p4, "samplingRate6"    # Ljava/lang/String;
    .param p5, "cardNumber"    # Ljava/lang/String;
    .param p6, "deviceNumber"    # Ljava/lang/String;
    .param p7, "isSmartDock"    # Z
    .param p8, "hasplayback"    # Z
    .param p9, "hascapture"    # Z
    .param p10, "hasmidi"    # Z
    .param p11, "format"    # I
    .param p12, "samplingRate24"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->state:I

    .line 96
    iput-object p2, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->channels:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate2:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate6:Ljava/lang/String;

    .line 99
    iput-object p5, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->cardNumber:Ljava/lang/String;

    .line 100
    iput-object p6, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->deviceNumber:Ljava/lang/String;

    .line 101
    iput-boolean p7, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->isSmartDock:Z

    .line 102
    iput-boolean p8, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hasplayback:Z

    .line 103
    iput-boolean p9, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hascapture:Z

    .line 104
    iput-boolean p10, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->hasmidi:Z

    .line 105
    iput p11, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->format:I

    .line 106
    iput p12, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->samplingRate24:I

    .line 94
    return-void
.end method
