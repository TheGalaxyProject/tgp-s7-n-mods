.class Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$12;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$12;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 565
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 566
    const-string/jumbo v0, "com.samsung.settings.wifi.CAPTIVE_PORTAL_WEBVIEW_ACTIVITY"

    .line 567
    .local v0, "actionCaptivePortal":Ljava/lang/String;
    const-string/jumbo v5, "com.samsung.vzw.action.CAPTIVE_PORTAL_WEBVIEW_ACTIVITY"

    .line 569
    .local v5, "vzwCaptivePortal":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .local v2, "huxExtensionIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$12;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get6(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 571
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 573
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 576
    :cond_0
    const-string/jumbo v7, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v8, "Hux extension not installed."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .local v6, "webViewActivity":Landroid/content/Intent;
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$12;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v6, v8}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_1
    return-void

    .line 574
    .end local v6    # "webViewActivity":Landroid/content/Intent;
    :cond_1
    move-object v0, v5

    .line 573
    goto :goto_0

    .line 582
    .restart local v6    # "webViewActivity":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 583
    .local v1, "ee":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v7, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ActivityNotFoundException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
