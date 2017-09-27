.class public Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;
.super Landroid/app/AlertDialog;
.source "WpsApDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;
    }
.end annotation


# instance fields
.field private WpsCount:I

.field private mContext:Landroid/content/Context;

.field mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;

.field private mTimeoutBar:Landroid/widget/ProgressBar;

.field private mTimer:Ljava/util/Timer;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsPin:Ljava/lang/String;

.field private mWpsSetup:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->WpsCount:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->WpsCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wpsSetup"    # I
    .param p3, "wps_pin"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 72
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->WpsCount:I

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mHandler:Landroid/os/Handler;

    .line 91
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_INIT:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    .line 97
    const-string/jumbo v0, "WpsApDialog"

    const-string/jumbo v1, "inside WpsAPDialog Ctor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    .line 99
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    .line 100
    const-string/jumbo v0, "WpsApDialog"

    const-string/jumbo v1, "wps_tether"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    if-nez v0, :cond_1

    .line 102
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    .line 107
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mFilter:Landroid/content/IntentFilter;

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    return-void

    .line 103
    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    .line 104
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 106
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v10, 0x7f0b1271

    const/16 v12, 0xca

    .line 315
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 317
    const-string/jumbo v9, "wifi_state"

    .line 318
    const/16 v10, 0xe

    .line 317
    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 319
    .local v7, "state":I
    const/16 v9, 0xb

    if-eq v7, v9, :cond_0

    const/16 v9, 0xa

    if-ne v7, v9, :cond_1

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->dismiss()V

    .line 314
    .end local v7    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 321
    :cond_2
    const-string/jumbo v9, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 322
    const-string/jumbo v9, "EVENT"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 323
    .local v8, "state":Ljava/lang/String;
    const-string/jumbo v9, "wps_success"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 324
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0d7e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 325
    .local v6, "msg":Ljava/lang/String;
    sget-object v9, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->CONNECTED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-direct {p0, v9, v6}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    .line 326
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    if-eqz v9, :cond_1

    .line 327
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v9}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 328
    .end local v6    # "msg":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "wps_fail"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 329
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 330
    .restart local v6    # "msg":Ljava/lang/String;
    sget-object v9, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-direct {p0, v9, v6}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    .line 331
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    if-eqz v9, :cond_1

    .line 332
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v9}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 333
    .end local v6    # "msg":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, "wps_overlap"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 334
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 335
    .restart local v6    # "msg":Ljava/lang/String;
    sget-object v9, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-direct {p0, v9, v6}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    .line 336
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    if-eqz v9, :cond_1

    .line 337
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v9}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 338
    .end local v6    # "msg":Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, "wps_pin_needed"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 340
    :try_start_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 341
    .local v2, "cmdMsg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 342
    .local v1, "b":Landroid/os/Bundle;
    const/16 v9, 0xca

    iput v9, v2, Landroid/os/Message;->what:I

    .line 343
    const-string/jumbo v9, "cmd_type"

    const-string/jumbo v10, "wps_cancel_int"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 345
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v2}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "cmdMsg":Landroid/os/Message;
    :goto_1
    const-wide/16 v10, 0x3e8

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 354
    :goto_2
    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    const/4 v10, 0x1

    if-ne v10, v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 355
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 356
    .local v5, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 357
    .restart local v1    # "b":Landroid/os/Bundle;
    iput v12, v5, Landroid/os/Message;->what:I

    .line 358
    const-string/jumbo v9, "cmd_type"

    const-string/jumbo v10, "wps_ap_pin_set"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string/jumbo v9, "wps_pin"

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iput-object v1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v5}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    goto/16 :goto_0

    .line 346
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v5    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v4

    .line 347
    .local v4, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 351
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 352
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 362
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_6
    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    const/4 v10, 0x2

    if-ne v10, v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 363
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 364
    .restart local v5    # "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 365
    .restart local v1    # "b":Landroid/os/Bundle;
    iput v12, v5, Landroid/os/Message;->what:I

    .line 366
    const-string/jumbo v9, "cmd_type"

    const-string/jumbo v10, "wps_ap_pin_client"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v9, "wps_pin"

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iput-object v1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v5}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 275
    const-string/jumbo v0, "WpsApDialog"

    const-string/jumbo v1, "Inside Update dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 277
    return-void

    .line 280
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    .line 282
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_COMPLETE:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v1

    .line 281
    if-lt v0, v1, :cond_1

    .line 283
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04036f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mView:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mView:Landroid/view/View;

    const v1, 0x7f11083b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTextView:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b126b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mView:Landroid/view/View;

    const v1, 0x7f11083c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mView:Landroid/view/View;

    const v1, 0x7f11083d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 143
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    .line 144
    const v0, 0x7f0b126a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->setTitle(I)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0b12a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->setView(Landroid/view/View;)V

    .line 159
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method protected onStart()V
    .locals 13

    .prologue
    const v12, 0x7f0b1271

    const/16 v11, 0xca

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 167
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v8}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)V

    .line 201
    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    .line 168
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    if-nez v0, :cond_2

    .line 206
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 207
    .local v7, "msg":Landroid/os/Message;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v6, "b":Landroid/os/Bundle;
    iput v11, v7, Landroid/os/Message;->what:I

    .line 209
    const-string/jumbo v0, "cmd_type"

    const-string/jumbo v1, "wps_pbc_int"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 212
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_START:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0d7b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    .line 163
    .end local v6    # "b":Landroid/os/Bundle;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 214
    .restart local v6    # "b":Landroid/os/Bundle;
    .restart local v7    # "msg":Landroid/os/Message;
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    .end local v6    # "b":Landroid/os/Bundle;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    if-ne v10, v0, :cond_4

    .line 216
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 217
    .restart local v7    # "msg":Landroid/os/Message;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 218
    .restart local v6    # "b":Landroid/os/Bundle;
    iput v11, v7, Landroid/os/Message;->what:I

    .line 219
    const-string/jumbo v0, "cmd_type"

    const-string/jumbo v1, "wps_ap_pin_random"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 223
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_START:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0d7c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_3
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    .end local v6    # "b":Landroid/os/Bundle;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_4
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    if-ne v9, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 227
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 228
    .restart local v7    # "msg":Landroid/os/Message;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 229
    .restart local v6    # "b":Landroid/os/Bundle;
    iput v11, v7, Landroid/os/Message;->what:I

    .line 230
    const-string/jumbo v0, "cmd_type"

    const-string/jumbo v1, "wps_ap_pin_client"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v0, "wps_pin"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 234
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_START:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0d7d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    aput-object v3, v2, v8

    .line 235
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    .line 234
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    :cond_5
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 243
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_COMPLETE:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    if-eq v3, v4, :cond_0

    .line 245
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    :try_start_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 248
    .local v1, "cmdMsg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 249
    .local v0, "b":Landroid/os/Bundle;
    const/16 v3, 0xca

    iput v3, v1, Landroid/os/Message;->what:I

    .line 250
    const-string/jumbo v3, "cmd_type"

    const-string/jumbo v4, "wps_cancel_int"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 252
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "cmdMsg":Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_1

    .line 263
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 264
    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 267
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    if-eqz v3, :cond_2

    .line 268
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 242
    :cond_2
    return-void

    .line 253
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 257
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 258
    .restart local v2    # "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
