.class Lcom/android/systemui/statusbar/policy/DataSaverController$1;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "DataSaverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DataSaverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DataSaverController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DataSaverController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/DataSaverController;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DataSaverController$1;->this$0:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 0
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    return-void
.end method

.method public onRestrictBackgroundBlacklistChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "blacklisted"    # Z

    .prologue
    .line 98
    return-void
.end method

.method public onRestrictBackgroundChanged(Z)V
    .locals 2
    .param p1, "isDataSaving"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController$1;->this$0:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->-get0(Lcom/android/systemui/statusbar/policy/DataSaverController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/DataSaverController$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/DataSaverController$1$1;-><init>(Lcom/android/systemui/statusbar/policy/DataSaverController$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method

.method public onRestrictBackgroundWhitelistChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "whitelisted"    # Z

    .prologue
    .line 94
    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    return-void
.end method
