.class Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;
.super Ljava/lang/Object;
.source "WifiOffloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "wifi_offload_network_notify"

    .line 66
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 69
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->-wrap0(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;Z)V

    .line 65
    return-void
.end method
