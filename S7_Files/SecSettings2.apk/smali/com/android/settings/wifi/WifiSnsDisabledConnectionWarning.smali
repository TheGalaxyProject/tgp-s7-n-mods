.class public Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;
.super Landroid/app/Activity;
.source "WifiSnsDisabledConnectionWarning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$1;,
        Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$2;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSsid:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSnsDisabledConnectionWarningDialog:Landroid/app/AlertDialog;

.field mWifiSnsDisabledConnectionWarningDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private netId:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->netId:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->DBG:Z

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$1;-><init>(Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$2;-><init>(Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiSnsDisabledConnectionWarningDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    return-void
.end method

.method private showWifiSnsDisabledConnectionWarningDialog()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040369

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f11081d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 115
    .local v1, "textView":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mSsid:Ljava/lang/String;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mSsid:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const v6, 0x7f0b0ca0

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 116
    const-string/jumbo v4, "\n\n"

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 116
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mContext:Landroid/content/Context;

    const v5, 0x7f0b12c9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, "newDialog":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b12c4

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 120
    const v3, 0x7f0b12c5

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 121
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mContext:Landroid/content/Context;

    const v4, 0x7f0b12a2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiSnsDisabledConnectionWarningDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mContext:Landroid/content/Context;

    const v4, 0x7f0b12a8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiSnsDisabledConnectionWarningDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    new-instance v3, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$3;-><init>(Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiSnsDisabledConnectionWarningDialog:Landroid/app/AlertDialog;

    .line 148
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiSnsDisabledConnectionWarningDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiSnsDisabledConnectionWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 150
    const-string/jumbo v3, "WifiSnsDisabledConnectionWarning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiSnsDisabledConnectionWarning appears with SSID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mSsid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiSnsDisabledConnectionWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 107
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->overridePendingTransition(II)V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->requestWindowFeature(I)Z

    .line 75
    iput-object p0, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mContext:Landroid/content/Context;

    .line 76
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 78
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->setVisible(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "SSID"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mSsid:Ljava/lang/String;

    .line 83
    const-string/jumbo v3, "netId"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->netId:I

    .line 84
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mSsid:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "AP"

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mSsid:Ljava/lang/String;

    .line 85
    :cond_0
    const-string/jumbo v3, "WifiSnsDisabledConnectionWarning"

    const-string/jumbo v4, "WifiSnsDisabledConnectionWarning created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v1, "mFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->showWifiSnsDisabledConnectionWarningDialog()V

    .line 94
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, "systemCloseIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method
