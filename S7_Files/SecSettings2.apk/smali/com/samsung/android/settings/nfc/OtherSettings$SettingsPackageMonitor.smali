.class Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "OtherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/OtherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/OtherSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nfc/OtherSettings;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/nfc/OtherSettings;Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nfc/OtherSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/OtherSettings;->-get0(Lcom/samsung/android/settings/nfc/OtherSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 340
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/OtherSettings;->-get0(Lcom/samsung/android/settings/nfc/OtherSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 345
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/OtherSettings;->-get0(Lcom/samsung/android/settings/nfc/OtherSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 350
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/OtherSettings;->-get0(Lcom/samsung/android/settings/nfc/OtherSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 355
    return-void
.end method
