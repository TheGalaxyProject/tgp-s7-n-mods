.class public Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
.super Ljava/lang/Object;
.source "ManufacturerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;,
        Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;
    }
.end annotation


# instance fields
.field public final MANUFACTURER_DEVICE_ID_WEARABLE_MAX:I

.field public final MANUFACTURER_DEVICE_ID_WEARABLE_MIN:I

.field public final MANUFACTURER_DEVICE_TYPE_BLE:B

.field public final MANUFACTURER_DEVICE_TYPE_CLASSIC:B

.field public final MANUFACTURER_DEVICE_TYPE_DEFAULT:B

.field public final MANUFACTURER_DEVICE_TYPE_HF_ROLE_SUPPORTED:B

.field public final MANUFACTURER_DEVICE_TYPE_HIDDEN_CONDITION:B

.field public final MANUFACTURER_DEVICE_TYPE_NONE:B

.field public final MANUFACTURER_DEVICE_TYPE_SLD_L:B

.field public final MANUFACTURER_DEVICE_TYPE_SLD_R:B

.field private MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

.field private MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

.field private MANUFACTURER_LENGTH_SS_LE_DEVICE:I

.field private MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

.field private MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

.field private MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

.field private MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

.field private MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

.field private MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

.field private MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_CRC:I

.field private MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_HASH:I

.field private MANUFACTURER_OFFSET_SS_BREDR_DEVICE_ICON:I

.field private MANUFACTURER_OFFSET_SS_BREDR_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_INFO:I

.field private MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_TYPE:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_EXTRA:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

.field private MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I

.field private MANUFACTURER_OFFSET_SS_LE_DEVICE_CONTACT_HASH:I

.field private MANUFACTURER_OFFSET_SS_LE_DEVICE_ICON:I

.field private MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_SS_LE_FEATURES:I

.field private MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I

.field private MANUFACTURER_OFFSET_SS_LE_PROXIMITY_INFO:I

.field private MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

.field private MANUFACTURER_OFFSET_SS_SERVICE_ID:I

.field private final MANUFACTURER_SS_LE_ASSOCIATED_SERVICE_DATA_FIELD:B

.field private final MANUFACTURER_SS_LE_CONNECTIVITY_FIELD:B

.field private final MANUFACTURER_SS_LE_DEVICE_FIELD:B

.field private final MANUFACTURER_SS_LE_PACKET_NUMBER_FIELD:B

.field private final MANUFACTURER_SS_LE_PROXIMITY_FIELD:B

.field public final MANUFACTURER_TYPE_DEFAULT:I

.field public final MANUFACTURER_TYPE_OLD:I

.field public final MANUFACTURER_TYPE_SS_BREDR:I

.field public final MANUFACTURER_TYPE_SS_LE:I

.field private mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

.field private mManufacturerRawData:[B

.field private mManufacturerType:I

.field private mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;


# direct methods
.method public constructor <init>([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_TYPE_DEFAULT:I

    .line 13
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_TYPE_OLD:I

    .line 14
    iput v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_TYPE_SS_BREDR:I

    .line 15
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_TYPE_SS_LE:I

    .line 17
    const/16 v0, 0x90

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_WEARABLE_MIN:I

    .line 18
    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_WEARABLE_MAX:I

    .line 21
    iput-byte v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_DEFAULT:B

    .line 22
    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_CLASSIC:B

    .line 23
    iput-byte v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_BLE:B

    .line 24
    iput-byte v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_SLD_L:B

    .line 25
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_SLD_R:B

    .line 28
    iput-byte v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_NONE:B

    .line 29
    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_HIDDEN_CONDITION:B

    .line 30
    iput-byte v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_HF_ROLE_SUPPORTED:B

    .line 33
    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

    .line 34
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

    .line 35
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

    .line 36
    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_SERVICE_ID:I

    .line 37
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    .line 38
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_TYPE:I

    .line 39
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_INFO:I

    .line 40
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_TYPE:I

    .line 41
    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_ICON:I

    .line 42
    const/16 v0, 0xc

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_HASH:I

    .line 43
    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_CRC:I

    .line 44
    const/16 v0, 0x1f

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    .line 45
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    .line 46
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I

    .line 47
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    .line 48
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_INFO:I

    .line 49
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    .line 50
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_ICON:I

    .line 51
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_CONTACT_HASH:I

    .line 52
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I

    .line 53
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 54
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    .line 55
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    .line 56
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_EXTRA:I

    .line 57
    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

    .line 59
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

    .line 60
    iput v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

    .line 61
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_DEVICE:I

    .line 62
    const/16 v0, 0x12

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

    .line 63
    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    .line 65
    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_PACKET_NUMBER_FIELD:B

    .line 66
    iput-byte v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_PROXIMITY_FIELD:B

    .line 67
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_DEVICE_FIELD:B

    .line 68
    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_CONNECTIVITY_FIELD:B

    .line 69
    const/16 v0, 0x10

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_ASSOCIATED_SERVICE_DATA_FIELD:B

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    .line 291
    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 296
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;-><init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    .line 297
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;-><init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    .line 298
    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->updateDeviceInfo([B)V

    .line 295
    return-void
.end method

.method private setBluetoothType([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 527
    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v2, :pswitch_data_0

    .line 526
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 529
    :pswitch_1
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    add-int/2addr v3, v4

    aget-byte v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setBluetoothType(B)V

    goto :goto_0

    .line 534
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceId()[B

    move-result-object v1

    .line 536
    .local v1, "deviceId":[B
    aget-byte v2, v1, v3

    if-nez v2, :cond_0

    .line 537
    const/4 v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v0, v2, 0xff

    .line 538
    .local v0, "convertId":I
    const/16 v2, 0x90

    if-lt v0, v2, :cond_0

    .line 539
    const/16 v2, 0xff

    if-gt v0, v2, :cond_0

    .line 541
    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    array-length v2, v2

    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

    if-le v2, v3, :cond_0

    .line 542
    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

    aget-byte v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setBluetoothType(B)V

    goto :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setContactCrc([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 491
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 493
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_CRC:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactCrc([BI)V

    goto :goto_0

    .line 496
    :pswitch_1
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_EXTRA:I

    add-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 498
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactCrc([BI)V

    goto :goto_0

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setContactHash([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 474
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 476
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_HASH:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactHash([BI)V

    goto :goto_0

    .line 479
    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_CONTACT_HASH:I

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactHash([BI)V

    goto :goto_0

    .line 474
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDeviceCategory([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 400
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 402
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_TYPE:I

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceCategory(B)V

    goto :goto_0

    .line 405
    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceCategory(B)V

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDeviceCategoryPrefix([B)V
    .locals 8
    .param p1, "data"    # [B

    .prologue
    .line 434
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v5, :pswitch_data_0

    .line 433
    :goto_0
    return-void

    .line 436
    :pswitch_0
    const-string/jumbo v2, ""

    .line 437
    .local v2, "name":Ljava/lang/String;
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    aget-byte v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 438
    .local v0, "associatedLength":I
    if-gez v0, :cond_0

    .line 439
    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    .line 440
    return-void

    .line 443
    :cond_0
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    add-int/2addr v5, v0

    add-int/lit8 v3, v5, 0x1

    .line 444
    .local v3, "nameData":I
    array-length v5, p1

    if-le v5, v3, :cond_1

    aget-byte v5, p1, v3

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_2

    .line 445
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    .line 446
    return-void

    .line 449
    :cond_2
    array-length v5, p1

    sub-int/2addr v5, v3

    new-array v4, v5, [B

    .line 450
    .local v4, "parseByte":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 451
    add-int v5, v1, v3

    aget-byte v5, p1, v5

    aput-byte v5, v4, v1

    .line 452
    aget-byte v5, v4, v1

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_4

    .line 460
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 461
    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_4
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_5

    .line 456
    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    .line 457
    return-void

    .line 450
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 464
    .end local v0    # "associatedLength":I
    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nameData":I
    .end local v4    # "parseByte":[B
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget-object v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    iget-object v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-static {v7}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->-get0(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;)B

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->getCategoryPrefix(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDeviceIconIndex([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 417
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 419
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_ICON:I

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceIconIndex(B)V

    goto :goto_0

    .line 422
    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_ICON:I

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceIconIndex(B)V

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDeviceId([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 510
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    .line 509
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 512
    :pswitch_1
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceId([BI)V

    goto :goto_0

    .line 517
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceId([BI)V

    goto :goto_0

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setManufacturerRawData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 319
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    .line 318
    return-void
.end method

.method private setManufacturerType([B)V
    .locals 10
    .param p1, "data"    # [B

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x9

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 323
    if-eqz p1, :cond_0

    array-length v5, p1

    if-ge v5, v8, :cond_1

    .line 324
    :cond_0
    iput v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 325
    return-void

    .line 328
    :cond_1
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

    aget-byte v5, p1, v5

    if-nez v5, :cond_3

    .line 329
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    if-ne v5, v7, :cond_3

    .line 331
    iput v9, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 322
    :cond_2
    :goto_0
    return-void

    .line 332
    :cond_3
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_SERVICE_ID:I

    aget-byte v5, p1, v5

    if-ne v5, v8, :cond_4

    .line 333
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    aget-byte v5, p1, v5

    if-nez v5, :cond_4

    .line 335
    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    goto :goto_0

    .line 336
    :cond_4
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_SERVICE_ID:I

    aget-byte v5, p1, v5

    if-ne v5, v8, :cond_5

    .line 337
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    aget-byte v5, p1, v5

    if-ne v5, v7, :cond_5

    .line 339
    const/4 v5, 0x3

    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 342
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    aget-byte v0, p1, v5

    .line 343
    .local v0, "extra":B
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    add-int/lit8 v4, v5, 0x1

    .line 344
    .local v4, "prevLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v5, 0x5

    if-ge v1, v5, :cond_2

    .line 345
    shl-int v5, v9, v1

    int-to-byte v2, v5

    .line 346
    .local v2, "mask":B
    and-int v5, v0, v2

    int-to-byte v3, v5

    .line 348
    .local v3, "parse":B
    sparse-switch v3, :sswitch_data_0

    .line 344
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 350
    :sswitch_0
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I

    .line 351
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

    add-int/2addr v4, v5

    .line 352
    goto :goto_2

    .line 354
    :sswitch_1
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    .line 355
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

    add-int/2addr v4, v5

    .line 356
    goto :goto_2

    .line 358
    :sswitch_2
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    .line 359
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_DEVICE:I

    add-int/2addr v4, v5

    .line 360
    goto :goto_2

    .line 362
    :sswitch_3
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I

    .line 363
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

    add-int/2addr v4, v5

    .line 364
    goto :goto_2

    .line 366
    :sswitch_4
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 367
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    aget-byte v5, p1, v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    .line 368
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    add-int/2addr v4, v5

    .line 369
    goto :goto_2

    .line 373
    .end local v0    # "extra":B
    .end local v1    # "i":I
    .end local v2    # "mask":B
    .end local v3    # "parse":B
    .end local v4    # "prevLength":I
    :cond_5
    iput v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    goto :goto_0

    .line 348
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private setTxPower([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x1

    .line 378
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    .line 394
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setTxPower(I)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 380
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_TYPE:I

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_INFO:I

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setTxPower(I)V

    goto :goto_0

    .line 385
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    aget-byte v0, p1, v0

    if-ne v0, v1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_INFO:I

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setTxPower(I)V

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getBluetoothType()B
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getBluetoothType()B

    move-result v0

    return v0
.end method

.method public getContactCrc()[B
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getContactCrc()[B

    move-result-object v0

    return-object v0
.end method

.method public getContactHash()[B
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getContactHash()[B

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCategory()B
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceCategory()B

    move-result v0

    return v0
.end method

.method public getDeviceIcon()I
    .locals 3

    .prologue
    .line 590
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    .line 597
    const/4 v0, 0x0

    return v0

    .line 593
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceCategory()B

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceIconIndex()B

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->getDeviceIcon(BB)I

    move-result v0

    return v0

    .line 590
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getDeviceId()[B
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceId()[B

    move-result-object v0

    return-object v0
.end method

.method public getManufacturerRawData()[B
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    return-object v0
.end method

.method public getManufacturerType()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    return v0
.end method

.method public getPrefixName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getPrefixName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSSManufacturerType()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 602
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    if-nez v0, :cond_0

    .line 603
    return v2

    .line 606
    :cond_0
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 607
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 608
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 610
    :cond_2
    return v2
.end method

.method public isSupportFeature(B)Z
    .locals 2
    .param p1, "feature"    # B

    .prologue
    .line 614
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    .line 628
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 616
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    aget-byte v0, v0, v1

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    .line 618
    const/4 v0, 0x1

    return v0

    .line 614
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateDeviceInfo([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    return-void

    .line 306
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setManufacturerRawData([B)V

    .line 307
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setManufacturerType([B)V

    .line 308
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setTxPower([B)V

    .line 309
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceCategory([B)V

    .line 310
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceIconIndex([B)V

    .line 311
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceCategoryPrefix([B)V

    .line 312
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setContactHash([B)V

    .line 313
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setContactCrc([B)V

    .line 314
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceId([B)V

    .line 315
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setBluetoothType([B)V

    .line 301
    return-void
.end method
