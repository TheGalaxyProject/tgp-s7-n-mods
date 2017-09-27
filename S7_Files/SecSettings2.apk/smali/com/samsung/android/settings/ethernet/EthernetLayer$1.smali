.class Lcom/samsung/android/settings/ethernet/EthernetLayer$1;
.super Landroid/content/BroadcastReceiver;
.source "EthernetLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ethernet/EthernetLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ethernet/EthernetLayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ethernet/EthernetLayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/ethernet/EthernetLayer;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetLayer$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetLayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "action":Ljava/lang/String;
    return-void
.end method
