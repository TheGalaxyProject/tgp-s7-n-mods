.class Lcom/samsung/android/settings/GigaMultiPath$5;
.super Ljava/lang/Object;
.source "GigaMultiPath.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/GigaMultiPath;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GigaMultiPath;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/GigaMultiPath;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get9(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get9(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GigaMultiPath;->-set2(Lcom/samsung/android/settings/GigaMultiPath;Z)Z

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get9(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-virtual {v0}, Lcom/samsung/android/settings/GigaMultiPath;->showProgressDialog()V

    goto :goto_0
.end method
