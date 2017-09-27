.class Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog$2;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1326
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    .line 1327
    .local v0, "activity":Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;
    const-string/jumbo v1, "WifiSecSetupActivity"

    const-string/jumbo v2, "Skip anyway!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    if-eqz v0, :cond_0

    .line 1329
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 1330
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    .line 1325
    :cond_0
    return-void
.end method
