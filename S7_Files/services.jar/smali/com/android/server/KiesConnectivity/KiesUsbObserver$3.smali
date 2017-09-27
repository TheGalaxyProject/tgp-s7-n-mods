.class Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;
.super Landroid/content/BroadcastReceiver;
.source "KiesUsbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KiesConnectivity/KiesUsbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v11, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "connected"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 131
    .local v3, "bConnected":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "configured"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 132
    .local v2, "bConfigured":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "mtp"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 133
    .local v7, "bEnabled_MTP":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "mass_storage"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 134
    .local v1, "bCDFS":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "ptp"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 135
    .local v4, "bEnable_PTP":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "sec_charging"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 136
    .local v5, "bEnable_SEC_charging":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "midi"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 139
    .local v6, "bEnable_midi":Z
    const/4 v9, -0x1

    .line 140
    .local v9, "usbMode":I
    const-string/jumbo v11, "sys.usb.config"

    const-string/jumbo v12, "none"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, "config":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string/jumbo v12, "CscFeature_Common_EnableSUA"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 143
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getUsbMode() -> sys.usb.config : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getUsbMode() -> bCDFS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 147
    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    if-nez v11, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v11, :cond_1

    .line 149
    const-string/jumbo v11, "mass_storage"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "mass_storage,adb"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 150
    :cond_0
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    .line 151
    const/4 v10, 0x1

    .line 152
    .local v10, "usbState":I
    const/16 v9, 0x7d0

    .line 153
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-wrap1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    .line 154
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 155
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->startCDFSEjectTimer()V

    .line 156
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "startCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v1    # "bCDFS":Z
    .end local v2    # "bConfigured":Z
    .end local v3    # "bConnected":Z
    .end local v4    # "bEnable_PTP":Z
    .end local v5    # "bEnable_SEC_charging":Z
    .end local v6    # "bEnable_midi":Z
    .end local v7    # "bEnabled_MTP":Z
    .end local v8    # "config":Ljava/lang/String;
    .end local v9    # "usbMode":I
    .end local v10    # "usbState":I
    :cond_1
    :goto_0
    return-void

    .line 160
    .restart local v1    # "bCDFS":Z
    .restart local v2    # "bConfigured":Z
    .restart local v3    # "bConnected":Z
    .restart local v4    # "bEnable_PTP":Z
    .restart local v5    # "bEnable_SEC_charging":Z
    .restart local v6    # "bEnable_midi":Z
    .restart local v7    # "bEnabled_MTP":Z
    .restart local v8    # "config":Ljava/lang/String;
    .restart local v9    # "usbMode":I
    :cond_2
    if-nez v3, :cond_3

    if-eqz v2, :cond_4

    .line 169
    :cond_3
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    if-eqz v7, :cond_5

    .line 170
    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    if-eqz v11, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v11, :cond_1

    .line 172
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    .line 173
    const/4 v10, 0x0

    .line 174
    .restart local v10    # "usbState":I
    const/16 v9, 0x7d0

    .line 175
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-wrap1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    .line 176
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 177
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    .line 178
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "stopCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    .end local v10    # "usbState":I
    :cond_4
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 162
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    .line 163
    const/4 v10, 0x0

    .line 164
    .restart local v10    # "usbState":I
    const/16 v9, 0x7d0

    .line 165
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-wrap1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    .line 166
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    .line 167
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "stopCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v10    # "usbState":I
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    if-eqz v4, :cond_6

    .line 182
    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    if-eqz v11, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v11, :cond_1

    .line 184
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    .line 185
    const/4 v10, 0x0

    .line 186
    .restart local v10    # "usbState":I
    const/16 v9, 0x7d0

    .line 187
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-wrap1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    .line 188
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 189
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    .line 190
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "stopCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 194
    .end local v10    # "usbState":I
    :cond_6
    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    if-eqz v5, :cond_7

    .line 195
    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    if-eqz v11, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v11, :cond_1

    .line 197
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    .line 198
    const/4 v10, 0x0

    .line 199
    .restart local v10    # "usbState":I
    const/16 v9, 0x7d0

    .line 200
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-wrap1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    .line 201
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 202
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    .line 203
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "stopCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    .end local v10    # "usbState":I
    :cond_7
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-eqz v6, :cond_1

    .line 208
    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    if-eqz v11, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v11, :cond_1

    .line 210
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    .line 211
    const/4 v10, 0x0

    .line 212
    .restart local v10    # "usbState":I
    const/16 v9, 0x7d0

    .line 213
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-wrap1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    .line 214
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 215
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    .line 216
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "stopCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
