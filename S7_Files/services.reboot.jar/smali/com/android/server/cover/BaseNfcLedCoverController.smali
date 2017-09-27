.class Lcom/android/server/cover/BaseNfcLedCoverController;
.super Ljava/lang/Object;
.source "BaseNfcLedCoverController.java"


# static fields
.field protected static final CMD_INTERNAL_LED_ACCEPT_REJECT:I = 0x11

.field protected static final CMD_INTERNAL_LED_CALL_INPROGRESS:I = 0x3

.field protected static final CMD_INTERNAL_LED_REPLY:I = 0xd1

.field protected static final CMD_LED_ALARM:I = 0x6

.field protected static final CMD_LED_BATTERY_CHARGING:I = 0xc

.field protected static final CMD_LED_BATTERY_CHARGING_WIRELESS:I = 0x13

.field protected static final CMD_LED_BATTERY_LOW:I = 0xb

.field protected static final CMD_LED_CALL_END:I = 0x4

.field protected static final CMD_LED_CALL_INCOMING:I = 0x2

.field protected static final CMD_LED_CLOCK:I = 0xf

.field protected static final CMD_LED_FACTORY_MODE:I = 0xe0

.field protected static final CMD_LED_INDICATOR:I = 0x10

.field protected static final CMD_LED_MISSED_EVENT:I = 0x9

.field protected static final CMD_LED_MUSIC:I = 0xd

.field protected static final CMD_LED_NEW_MESSAGE:I = 0x5

.field protected static final CMD_LED_OFF:I = 0x12

.field protected static final CMD_LED_POWER_ON:I = 0x1

.field protected static final CMD_LED_VIDEO_CALL_INCOMING:I = 0x14

.field protected static final CMD_LED_VOICE_RECORDER:I = 0xe

.field protected static final CMD_LED_VOLUME:I = 0xa

.field protected static final DEBUG:Z = true

.field protected static final EVENT_RESULT_ACCEPT:B = 0x1t

.field protected static final EVENT_RESULT_REJECT:B = 0x2t

.field protected static final EVENT_RESULT_TAP_LEFT:B = 0x3t

.field protected static final EVENT_RESULT_TAP_MID:B = 0x4t

.field protected static final EVENT_RESULT_TAP_RIGHT:B = 0x5t

.field protected static final EVENT_TOUCH_POLL_INTERVAL:J = 0x64L

.field protected static final EVENT_TYPE_ALARM:I = 0x1

.field protected static final EVENT_TYPE_CALL:I = 0x0

.field protected static final EVENT_TYPE_FACTORY:I = 0x5

.field protected static final EVENT_TYPE_MAX:I = 0x5

.field protected static final EVENT_TYPE_SCHEDULE:I = 0x3

.field protected static final EVENT_TYPE_SYSTEM_INTERNAL_EVENT:I = 0x4

.field protected static final EVENT_TYPE_TIMER:I = 0x2

.field protected static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field protected static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field protected static final SAFE_DEBUG:Z = true

.field protected static final SYSTEM_EVENT_KEY_LED_OFF_COMMAND:Ljava/lang/String; = "led_off_command"

.field protected static final SYSTEM_EVENT_KEY_SEND_COMMAND_CONTENT:Ljava/lang/String; = "send_command_content"

.field protected static final SYSTEM_EVENT_KEY_SEND_COMMAND_ID:Ljava/lang/String; = "send_command_id"

.field protected static final SYSTEM_EVENT_KEY_TOUCH_LISTENER_RESPONSE:Ljava/lang/String; = "lcd_touch_listener_respone"

.field protected static final SYSTEM_EVENT_KEY_TOUCH_LISTENER_TYPE:Ljava/lang/String; = "lcd_touch_listener_type"

.field protected static final SYSTEM_EVENT_KEY_TYPE:Ljava/lang/String; = "event_type"

.field protected static final SYSTEM_EVENT_KEY_TYPE_DISABLE_LCD_OFF_BY_COVER:Ljava/lang/String; = "lcd_off_disabled_by_cover"

.field protected static final SYSTEM_EVENT_LCD_OFF_DISABLED_BY_COVER:I = 0x4

.field protected static final SYSTEM_EVENT_LED_OFF:I = 0x0

.field protected static final SYSTEM_EVENT_NOTIFICATION_ADD:I = 0x2

.field protected static final SYSTEM_EVENT_NOTIFICATION_REMOVE:I = 0x3

.field protected static final SYSTEM_EVENT_POWER_BUTTON:I = 0x1

.field protected static final SYSTEM_EVENT_SEND_COMMAND:I = 0x5

.field protected static final SYSTEM_EVENT_TYPE_DISABLE_LCD_OFF_BY_COVER:I = 0x1

.field protected static final SYSTEM_EVENT_TYPE_TOUCH_RESPONSE:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "CoverManager.BaseNfcLedCoverController"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIsLedCoverAttached:Z

.field protected mNfcAdapter:Landroid/nfc/NfcAdapter;

.field protected final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 115
    iput-object p2, p0, Lcom/android/server/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    .line 117
    const-string/jumbo v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 118
    invoke-static {p2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 114
    return-void
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 135
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 158
    const-string/jumbo v0, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v0, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    iget-boolean v0, p0, Lcom/android/server/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 161
    const-string/jumbo v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method protected getByteDataString([B)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    const-string/jumbo v2, "null"

    return-object v2

    .line 171
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 173
    const-string/jumbo v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p1, v0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getNfcAdapter()Landroid/nfc/NfcAdapter;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/server/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 183
    const-string/jumbo v0, "CoverManager.BaseNfcLedCoverController"

    const-string/jumbo v1, "Could not get NfcAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 128
    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 138
    return-void
.end method

.method sendDataToNfcLedCover(I[B)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 124
    return-void
.end method

.method public sendPowerKeyToCover()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 141
    return-void
.end method

.method public setLcdOffDisabledByCover(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .prologue
    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "event_type"

    .line 150
    const/4 v2, 0x1

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    const-string/jumbo v1, "lcd_off_disabled_by_cover"

    .line 151
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendSystemEvent(Landroid/os/Bundle;)V

    .line 147
    return-void
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method updateNfcLedCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p1, "attached"    # Z
    .param p2, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 121
    return-void
.end method
