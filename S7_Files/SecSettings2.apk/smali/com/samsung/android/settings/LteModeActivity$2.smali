.class Lcom/samsung/android/settings/LteModeActivity$2;
.super Landroid/database/ContentObserver;
.source "LteModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/LteModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/LteModeActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/LteModeActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/LteModeActivity;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/settings/LteModeActivity$2;->this$0:Lcom/samsung/android/settings/LteModeActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v5, 0x0

    .line 80
    iget-object v2, p0, Lcom/samsung/android/settings/LteModeActivity$2;->this$0:Lcom/samsung/android/settings/LteModeActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/LteModeActivity;->-get1(Lcom/samsung/android/settings/LteModeActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 81
    const-string/jumbo v3, "lte_mode_switch"

    const/4 v4, 0x1

    .line 80
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 82
    .local v0, "LteMode":Z
    :goto_0
    const-string/jumbo v2, "LteModeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "KKK mLteModeObserver LteMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v2, p0, Lcom/samsung/android/settings/LteModeActivity$2;->this$0:Lcom/samsung/android/settings/LteModeActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/LteModeActivity;->-get2(Lcom/samsung/android/settings/LteModeActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    iget-object v2, p0, Lcom/samsung/android/settings/LteModeActivity$2;->this$0:Lcom/samsung/android/settings/LteModeActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/LteModeActivity;->-get2(Lcom/samsung/android/settings/LteModeActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 85
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/settings/LteModeActivity$2;->this$0:Lcom/samsung/android/settings/LteModeActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/LteModeActivity;->-get2(Lcom/samsung/android/settings/LteModeActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 86
    iget-object v2, p0, Lcom/samsung/android/settings/LteModeActivity$2;->this$0:Lcom/samsung/android/settings/LteModeActivity;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/LteModeActivity;->-wrap1(Lcom/samsung/android/settings/LteModeActivity;Z)V

    .line 79
    return-void

    .line 81
    .end local v0    # "LteMode":Z
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "LteMode":Z
    goto :goto_0
.end method
