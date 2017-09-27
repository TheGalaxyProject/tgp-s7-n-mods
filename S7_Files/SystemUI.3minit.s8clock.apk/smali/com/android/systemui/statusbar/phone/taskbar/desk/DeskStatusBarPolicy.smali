.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarPolicy;
.super Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.source "DeskStatusBarPolicy.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/DataSaverController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconController"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .param p3, "cast"    # Lcom/android/systemui/statusbar/policy/CastController;
    .param p4, "hotspot"    # Lcom/android/systemui/statusbar/policy/HotspotController;
    .param p5, "userInfoController"    # Lcom/android/systemui/statusbar/policy/UserInfoController;
    .param p6, "bluetooth"    # Lcom/android/systemui/statusbar/policy/BluetoothController;
    .param p7, "rotationLockController"    # Lcom/android/systemui/statusbar/policy/RotationLockController;
    .param p8, "dataSaver"    # Lcom/android/systemui/statusbar/policy/DataSaverController;

    .prologue
    .line 40
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/DataSaverController;)V

    .line 39
    return-void
.end method
