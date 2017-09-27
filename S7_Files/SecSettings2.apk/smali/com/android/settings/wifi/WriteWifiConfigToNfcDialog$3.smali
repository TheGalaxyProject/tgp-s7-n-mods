.class Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->handleWriteNfcEvent(Landroid/nfc/Tag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;->this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 276
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;->this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->-get2(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;->this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->-get0(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;->this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->-get0(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3$1;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;->this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->-get1(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
