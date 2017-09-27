.class public Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;
.super Landroid/app/Activity;
.source "UsbChargingNotiDialogVzw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw$1;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    new-instance v0, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw$1;-><init>(Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 16
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b050c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 37
    const v1, 0x7f0b050d

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw$2;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw$2;-><init>(Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;)V

    const v2, 0x7f0b1889

    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw$3;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw$3;-><init>(Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;->mDialog:Landroid/app/AlertDialog;

    .line 51
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 33
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 74
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 64
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;->mStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 58
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method
