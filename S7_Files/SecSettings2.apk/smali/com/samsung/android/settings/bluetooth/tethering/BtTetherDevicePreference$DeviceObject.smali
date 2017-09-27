.class Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;
.super Ljava/lang/Object;
.source "BtTetherDevicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceObject"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field isBusy:Z

.field summary:I

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summary"    # I
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "isBusy"    # Z

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->isBusy:Z

    .line 122
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->title:Ljava/lang/String;

    .line 123
    iput p2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->summary:I

    .line 124
    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->icon:Landroid/graphics/drawable/Drawable;

    .line 125
    iput-boolean p4, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->isBusy:Z

    .line 121
    return-void
.end method
