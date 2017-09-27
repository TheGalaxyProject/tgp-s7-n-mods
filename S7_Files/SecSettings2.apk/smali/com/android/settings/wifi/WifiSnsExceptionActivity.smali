.class public Lcom/android/settings/wifi/WifiSnsExceptionActivity;
.super Landroid/app/Activity;
.source "WifiSnsExceptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSnsExceptionActivity$1;,
        Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsResultReported:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSsid:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

.field mWifiSnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private netId:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->netId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/wifi/WifiSnsExceptionActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mIsResultReported:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mIsResultReported:Z

    .line 61
    new-instance v0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity$1;-><init>(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;-><init>(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 49
    return-void
.end method

.method private showWifiSnsExceptionDialog()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const v9, 0x7f0b12c2

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040368

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 146
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f11081c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 147
    .local v1, "textView":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v4, v9, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 149
    const-string/jumbo v4, "\n\n"

    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 149
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f0b12c3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "newDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 155
    const v3, 0x7f0b12c1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 157
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0b12a2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0b12a8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    new-instance v3, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;-><init>(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    .line 193
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 194
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 195
    const-string/jumbo v3, "WifiSnsExceptionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiSnsExceptionActivity appears with SSID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 144
    :cond_0
    return-void

    .line 151
    .end local v0    # "newDialog":Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 141
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->overridePendingTransition(II)V

    .line 139
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->requestWindowFeature(I)Z

    .line 82
    iput-object p0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    .line 83
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 85
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->setVisible(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "netId"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->netId:I

    .line 90
    const-string/jumbo v3, "SSID"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    .line 92
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "AP"

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    .line 93
    :cond_0
    const-string/jumbo v3, "WifiSnsExceptionActivity"

    const-string/jumbo v4, "WifiSnsExceptionActivity created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v1, "mFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->showWifiSnsExceptionDialog()V

    .line 102
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "systemCloseIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    return-void
.end method

.method public onStop()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 109
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mIsResultReported:Z

    if-eqz v4, :cond_2

    .line 118
    :cond_0
    sget-boolean v4, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WifiSnsExceptionActivity"

    const-string/jumbo v5, "WifiManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 121
    const-string/jumbo v5, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 120
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_3

    .line 122
    .local v1, "mAggressiveEnabled":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 123
    const-string/jumbo v4, "AP_AGG"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->sendGSIMdata(Ljava/lang/String;)V

    .line 127
    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 128
    const-string/jumbo v5, "wifi_sns_dialog_for_starting_settings"

    .line 127
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->finish()V

    .line 107
    return-void

    .line 110
    .end local v1    # "mAggressiveEnabled":Z
    :cond_2
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 111
    .local v2, "msg":Landroid/os/Message;
    const/16 v4, 0xc9

    iput v4, v2, Landroid/os/Message;->what:I

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "keep_connection"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    const-string/jumbo v4, "netId"

    iget v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->netId:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    move v1, v3

    .line 120
    goto :goto_1

    .line 125
    .restart local v1    # "mAggressiveEnabled":Z
    :cond_4
    const-string/jumbo v4, "AP_ON"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_2
.end method

.method sendGSIMdata(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataValue"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string/jumbo v2, "feature"

    .line 234
    .local v2, "featureKey":Ljava/lang/String;
    const-string/jumbo v3, "SNSU"

    .line 235
    .local v3, "featureValue":Ljava/lang/String;
    const-string/jumbo v1, "extra"

    .line 237
    .local v1, "dataKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 238
    :cond_0
    return-void

    .line 237
    :cond_1
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 240
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 241
    .local v4, "msgLog":Landroid/os/Message;
    const/16 v5, 0x4d

    iput v5, v4, Landroid/os/Message;->what:I

    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v0, "argsLog":Landroid/os/Bundle;
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_2

    .line 247
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 232
    :cond_2
    return-void
.end method
