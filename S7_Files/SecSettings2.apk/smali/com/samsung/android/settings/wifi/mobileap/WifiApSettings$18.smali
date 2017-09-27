.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap12(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V

    .line 1452
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-set6(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    .line 1453
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap18(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V

    .line 1450
    return-void
.end method
