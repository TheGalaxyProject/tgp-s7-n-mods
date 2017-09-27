.class Lcom/android/settings/bluetooth/DockService$4;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DockService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/DockService;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService$4;->this$0:Lcom/android/settings/bluetooth/DockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x1

    .line 618
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService$4;->this$0:Lcom/android/settings/bluetooth/DockService;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DockService;->-get2(Lcom/android/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 622
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService$4;->this$0:Lcom/android/settings/bluetooth/DockService;

    .line 623
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService$4;->this$0:Lcom/android/settings/bluetooth/DockService;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DockService;->-get2(Lcom/android/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 620
    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->hasDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService$4;->this$0:Lcom/android/settings/bluetooth/DockService;

    .line 627
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService$4;->this$0:Lcom/android/settings/bluetooth/DockService;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DockService;->-get2(Lcom/android/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 624
    invoke-static {v1, v2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->saveDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService$4;->this$0:Lcom/android/settings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService$4;->this$0:Lcom/android/settings/bluetooth/DockService;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DockService;->-get2(Lcom/android/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService$4;->this$0:Lcom/android/settings/bluetooth/DockService;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DockService;->-get4(Lcom/android/settings/bluetooth/DockService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/DockService;->-wrap0(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 617
    :cond_1
    :goto_0
    return-void

    .line 631
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService$4;->this$0:Lcom/android/settings/bluetooth/DockService;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DockService;->-get0(Lcom/android/settings/bluetooth/DockService;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService$4;->this$0:Lcom/android/settings/bluetooth/DockService;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 633
    const-string/jumbo v2, "dock_audio_media_enabled"

    .line 634
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService$4;->this$0:Lcom/android/settings/bluetooth/DockService;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DockService;->-get0(Lcom/android/settings/bluetooth/DockService;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 632
    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 634
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
