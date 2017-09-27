.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
.super Ljava/lang/Object;
.source "WifiApDeviceInfo.java"


# instance fields
.field private mDeviceMac:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->mDeviceMac:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->mDeviceMac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method
