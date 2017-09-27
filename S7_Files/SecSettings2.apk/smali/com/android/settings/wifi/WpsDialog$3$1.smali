.class Lcom/android/settings/wifi/WpsDialog$3$1;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WpsDialog$3;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/wifi/WpsDialog$3;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$3$1;->this$1:Lcom/android/settings/wifi/WpsDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$3$1;->this$1:Lcom/android/settings/wifi/WpsDialog$3;

    iget-object v1, v1, Lcom/android/settings/wifi/WpsDialog$3;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->-get5(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 227
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$3$1;->this$1:Lcom/android/settings/wifi/WpsDialog$3;

    iget-object v1, v1, Lcom/android/settings/wifi/WpsDialog$3;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->-get0(Lcom/android/settings/wifi/WpsDialog;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WpsDialog;->-set0(Lcom/android/settings/wifi/WpsDialog;I)I

    .line 228
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$3$1;->this$1:Lcom/android/settings/wifi/WpsDialog$3;

    iget-object v1, v1, Lcom/android/settings/wifi/WpsDialog$3;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->-get0(Lcom/android/settings/wifi/WpsDialog;)I

    move-result v1

    const/16 v2, 0x78

    if-le v1, v2, :cond_1

    .line 230
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$3$1;->this$1:Lcom/android/settings/wifi/WpsDialog$3;

    iget-object v1, v1, Lcom/android/settings/wifi/WpsDialog$3;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->-get1(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b1271

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$3$1;->this$1:Lcom/android/settings/wifi/WpsDialog$3;

    iget-object v1, v1, Lcom/android/settings/wifi/WpsDialog$3;->this$0:Lcom/android/settings/wifi/WpsDialog;

    sget-object v2, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_FAILED:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-static {v1, v2, v0}, Lcom/android/settings/wifi/WpsDialog;->-wrap1(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$3$1;->this$1:Lcom/android/settings/wifi/WpsDialog$3;

    iget-object v1, v1, Lcom/android/settings/wifi/WpsDialog$3;->this$0:Lcom/android/settings/wifi/WpsDialog;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WpsDialog;->-set0(Lcom/android/settings/wifi/WpsDialog;I)I

    .line 233
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$3$1;->this$1:Lcom/android/settings/wifi/WpsDialog$3;

    iget-object v1, v1, Lcom/android/settings/wifi/WpsDialog$3;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->-get6(Lcom/android/settings/wifi/WpsDialog;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$3$1;->this$1:Lcom/android/settings/wifi/WpsDialog$3;

    iget-object v1, v1, Lcom/android/settings/wifi/WpsDialog$3;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->-get6(Lcom/android/settings/wifi/WpsDialog;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$3$1;->this$1:Lcom/android/settings/wifi/WpsDialog$3;

    iget-object v1, v1, Lcom/android/settings/wifi/WpsDialog$3;->this$0:Lcom/android/settings/wifi/WpsDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    sget-object v2, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsDialog$DialogState;

    if-eq v1, v2, :cond_1

    .line 237
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$3$1;->this$1:Lcom/android/settings/wifi/WpsDialog$3;

    iget-object v1, v1, Lcom/android/settings/wifi/WpsDialog$3;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->-get7(Lcom/android/settings/wifi/WpsDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 225
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method
