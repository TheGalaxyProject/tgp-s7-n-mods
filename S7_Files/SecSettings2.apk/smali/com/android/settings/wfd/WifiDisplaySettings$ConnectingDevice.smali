.class Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectingDevice"
.end annotation


# instance fields
.field public mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

.field public mPendingForDlnaSwitching:Z

.field public mPendingForPrevDisconnect:Z

.field private mRoute:Landroid/media/MediaRouter$RouteInfo;

.field public mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

.field public mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p2, "display"    # Landroid/hardware/display/SemWifiDisplay;
    .param p3, "type"    # Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .prologue
    const/4 v0, 0x0

    .line 252
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    .line 254
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 255
    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 256
    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    .line 252
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p2, "device"    # Landroid/media/MediaRouter$RouteInfo;
    .param p3, "type"    # Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .prologue
    const/4 v0, 0x0

    .line 266
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 268
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 269
    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    .line 270
    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    .line 266
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p2, "type"    # Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 249
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p2, "device"    # Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .param p3, "type"    # Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .prologue
    const/4 v0, 0x0

    .line 259
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 261
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 262
    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    .line 263
    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    .line 259
    return-void
.end method
