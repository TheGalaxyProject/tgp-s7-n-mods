.class public Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;
.super Ljava/lang/Object;
.source "ManufacturerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mBluetoothType:B

.field private mContactCrc:[B

.field private mContactHash:[B

.field private mDeviceCategory:B

.field private mDeviceCategoryPrefix:Ljava/lang/String;

.field private mDeviceIconIndex:B

.field private mDeviceId:[B

.field private mTxPower:I

.field final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;)B
    .locals 1

    iget-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    return v0
.end method

.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V
    .locals 4
    .param p1, "this$0"    # Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 256
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    .line 252
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    .line 253
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    .line 257
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    .line 258
    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    .line 259
    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    .line 260
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategoryPrefix:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    aput-byte v1, v0, v1

    .line 262
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    aput-byte v1, v0, v2

    .line 263
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    aput-byte v1, v0, v3

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    aput-byte v1, v0, v1

    .line 265
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    aput-byte v1, v0, v2

    .line 266
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    aput-byte v1, v0, v1

    .line 267
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    aput-byte v1, v0, v2

    .line 268
    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    .line 256
    return-void
.end method


# virtual methods
.method public getBluetoothType()B
    .locals 1

    .prologue
    .line 287
    iget-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    return v0
.end method

.method public getContactCrc()[B
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    return-object v0
.end method

.method public getContactHash()[B
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    return-object v0
.end method

.method public getDeviceCategory()B
    .locals 1

    .prologue
    .line 281
    iget-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    return v0
.end method

.method public getDeviceIconIndex()B
    .locals 1

    .prologue
    .line 282
    iget-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    return v0
.end method

.method public getDeviceId()[B
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    return-object v0
.end method

.method public getPrefixName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategoryPrefix:Ljava/lang/String;

    return-object v0
.end method

.method protected setBluetoothType(B)V
    .locals 0
    .param p1, "type"    # B

    .prologue
    .line 278
    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    return-void
.end method

.method protected setContactCrc([BI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method protected setContactHash([BI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method protected setDeviceCategory(B)V
    .locals 0
    .param p1, "category"    # B

    .prologue
    .line 272
    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    return-void
.end method

.method protected setDeviceIconIndex(B)V
    .locals 0
    .param p1, "index"    # B

    .prologue
    .line 273
    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    return-void
.end method

.method protected setDeviceId([BI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method protected setPrefixName(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategoryPrefix:Ljava/lang/String;

    return-void
.end method

.method protected setTxPower(I)V
    .locals 0
    .param p1, "power"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    return-void
.end method
