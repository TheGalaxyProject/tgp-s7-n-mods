.class public Lcom/android/systemui/qs/tiles/WifiCallingTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiCallingTile$1;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$2;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$3;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$4;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_IMS_SIMLOADED:Ljava/lang/String; = "com.samsung.ims.action.onsimloaded"

.field private static final LONG_KEYPRESS:I = 0x2

.field private static final SHORT_KEYPRESS:I = 0x1

.field public static final VOWIFI_MENU_ENABLE:Ljava/lang/String; = "vowifi_menu_enable"

.field public static final WFC_SHOW_NEVER_AGAIN:Ljava/lang/String; = "wfc_dialog_show_never_again"

.field private static final WIFICALLING_SETTINGS:Landroid/content/Intent;

.field private static final WIFICALLING_SETTINGS_RJIL:Landroid/content/Intent;

.field private static final WIFICALLING_SETTINGS_TMO:Landroid/content/Intent;


# instance fields
.field private mActProcessATT:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field private mInCall:Z

.field private mInWifiCall:Z

.field private mIsWifiCallingMenuEnabled:Z

.field private mListening:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiCallingObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mActProcessATT:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mInWifiCall:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mActProcessATT:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mInCall:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mInWifiCall:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .locals 1
    .param p1, "turnOn"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->changeState(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isWfcEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setMode(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    .line 75
    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.callsettings.WifiCallActivity"

    .line 74
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS:Landroid/content/Intent;

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    .line 78
    const-string/jumbo v2, "com.samsung.tmowfc.wfcpref"

    const-string/jumbo v3, "com.samsung.tmowfc.wfcpref.WfcPrefActivity"

    .line 77
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS_TMO:Landroid/content/Intent;

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    .line 81
    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.CallFeaturesSetting"

    .line 80
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS_RJIL:Landroid/content/Intent;

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 7
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 108
    new-instance v3, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 412
    new-instance v3, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    .line 563
    new-instance v3, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 599
    new-instance v3, Lcom/android/systemui/qs/tiles/WifiCallingTile$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/tiles/WifiCallingTile$4;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 137
    check-cast p1, Lcom/android/systemui/statusbar/phone/QSTileHost;

    .end local p1    # "host":Lcom/android/systemui/qs/QSTile$Host;
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 140
    new-instance v3, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;

    invoke-direct {v3, p0, v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 144
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 145
    const-string/jumbo v4, "vowifi_menu_enable"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 144
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 147
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 148
    const-string/jumbo v4, "vowifi_menu_enable"

    .line 147
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string/jumbo v1, "com.samsung.ims.action.onsimloaded"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v1, :cond_0

    .line 157
    const-string/jumbo v1, "action_wifi_qs_refresh_att"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v1, "action_wifi_qs_setdim_att"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 163
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_TMOWFC:Z

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 167
    :cond_1
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x800

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 135
    :cond_2
    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    move v1, v2

    .line 147
    goto :goto_0
.end method

.method private changeState(Z)Z
    .locals 8
    .param p1, "turnOn"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 271
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_OPV_POPUP:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wfc_do_not_show_again_opl_dialog"

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 274
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->showWfcOPVDialog()V

    .line 275
    return v7

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isLocationMenuNeed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isWfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setMode(Z)V

    .line 302
    return v3

    .line 276
    :cond_3
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_RJILWFC:Z

    if-nez v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wfc_dialog_show_never_again"

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    .line 279
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_FTM_POPUP:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0f03f8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 281
    new-instance v4, Lcom/android/systemui/qs/tiles/WifiCallingTile$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$5;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    .line 288
    new-instance v6, Lcom/android/systemui/qs/tiles/WifiCallingTile$6;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$6;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    .line 280
    const v3, 0x104000a

    .line 287
    const/high16 v5, 0x1040000

    move-object v0, p0

    .line 278
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->showLocationInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 295
    return v7

    .line 279
    :cond_4
    const v0, 0x7f0f03f7

    goto :goto_0

    .line 297
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setMode(Z)V

    .line 298
    return v3
.end method

.method private getATTVoWifiIntent(I)Landroid/content/Intent;
    .locals 4
    .param p1, "keyPressType"    # I

    .prologue
    .line 589
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Launch provisioning"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 591
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.intent.action.ACTIVATE_WIFI_CALLING"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-string/jumbo v2, "qs"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.nsdsvowifi"

    const-string/jumbo v3, "com.samsung.android.nsdsvowifi.VoWifiCheckActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 595
    return-object v1
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 243
    .local v0, "phoneId":I
    if-gez v0, :cond_0

    .line 244
    const/4 v0, 0x0

    .line 246
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isWfcEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 373
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_TMOWFC:Z

    if-eqz v4, :cond_1

    .line 374
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegister(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    move-result-object v0

    .line 375
    .local v0, "registerStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;
    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    if-ne v0, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 377
    .end local v0    # "registerStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi_call_enable"

    invoke-static {v4, v5, v3}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 379
    .local v1, "wfcEnabled":I
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v4, :cond_3

    .line 380
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isEnhanced4gLTEEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v1, v2, :cond_2

    move v3, v2

    :cond_2
    return v3

    .line 383
    :cond_3
    if-ne v1, v2, :cond_4

    :goto_1
    return v2

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method private setMode(Z)V
    .locals 8
    .param p1, "mode"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 388
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_TMOWFC:Z

    if-eqz v3, :cond_2

    .line 389
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set mode TMO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 391
    if-eqz p1, :cond_1

    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    .line 390
    :goto_0
    invoke-static {v4, v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    .line 387
    :cond_0
    :goto_1
    return-void

    .line 392
    :cond_1
    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    goto :goto_0

    .line 393
    :cond_2
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v3, :cond_3

    .line 394
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getATTVoWifiIntent(I)Landroid/content/Intent;

    move-result-object v1

    .line 396
    .local v1, "wfcIntentATT":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3, v1}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivityDismissingKeyguard() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 401
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "wfcIntentATT":Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    .line 402
    const-string/jumbo v7, "wifi_call_enable"

    .line 403
    if-eqz p1, :cond_4

    move v3, v4

    .line 401
    :goto_2
    invoke-static {v6, v7, v3}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 404
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_RJILWFC:Z

    if-eqz v3, :cond_0

    .line 405
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "action_wifi_call_enable_broadcast"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v2, "wificall":Landroid/content/Intent;
    const-string/jumbo v3, "wifi_call_enable"

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .end local v2    # "wificall":Landroid/content/Intent;
    :cond_4
    move v3, v5

    .line 403
    goto :goto_2

    .restart local v2    # "wificall":Landroid/content/Intent;
    :cond_5
    move v4, v5

    .line 406
    goto :goto_3
.end method

.method private showLocationInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Ljava/lang/CharSequence;
    .param p3, "posButton"    # I
    .param p4, "posListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negButton"    # I
    .param p6, "negListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v5, 0x0

    .line 491
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    return-void

    .line 495
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040106

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 496
    .local v2, "popupEntryView":Landroid/view/View;
    const v3, 0x7f1300ca

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 498
    .local v1, "disableAlertCheckBox":Landroid/widget/CheckBox;
    new-instance v3, Lcom/android/systemui/qs/tiles/WifiCallingTile$9;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile$9;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/widget/CheckBox;)V

    .line 497
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 510
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 511
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_1

    .line 512
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 513
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 515
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 516
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 517
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 518
    :cond_2
    if-eqz p5, :cond_3

    if-eqz p6, :cond_3

    .line 519
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 520
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 522
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 523
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/systemui/qs/tiles/WifiCallingTile$10;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$10;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 528
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 529
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 489
    return-void
.end method

.method private showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Ljava/lang/CharSequence;
    .param p3, "posButton"    # I
    .param p4, "posListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negButton"    # I
    .param p6, "negListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 538
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    return-void

    .line 542
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 543
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_1

    .line 544
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 546
    :cond_1
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 547
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 548
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 549
    :cond_2
    if-eqz p5, :cond_3

    if-eqz p6, :cond_3

    .line 550
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 551
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 553
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 554
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/WifiCallingTile$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$11;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 559
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 560
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 536
    return-void
.end method

.method private showWfcOPVDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 459
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    return-void

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040107

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 465
    .local v0, "layout":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 466
    const v2, 0x7f0f06a5

    .line 465
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 467
    new-instance v2, Lcom/android/systemui/qs/tiles/WifiCallingTile$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$7;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    const v3, 0x7f0f06ac

    .line 465
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 475
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/WifiCallingTile$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$8;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 480
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 481
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 482
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 458
    return-void
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->supportWFCStateUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    return-object v3

    .line 311
    :cond_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    if-eqz v0, :cond_2

    .line 316
    :cond_1
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_TMOWFC:Z

    if-eqz v0, :cond_3

    .line 317
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS_TMO:Landroid/content/Intent;

    return-object v0

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLongClickIntent() mIsWifiCallingMenuEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-object v3

    .line 318
    :cond_3
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v0, :cond_4

    .line 319
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getATTVoWifiIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 320
    :cond_4
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_RJILWFC:Z

    if-eqz v0, :cond_5

    .line 321
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS_RJIL:Landroid/content/Intent;

    return-object v0

    .line 323
    :cond_5
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 369
    const/16 v0, 0x1f4

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 337
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NON_TRANSLATABLE_WFC_TITLE:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 256
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getMetricsCategory()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 258
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleClick : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " WifiCallingMenuEnabled "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isWifiCallingTileBlocked()Z

    move-result v0

    .line 259
    if-eqz v0, :cond_1

    .line 261
    return-void

    :cond_0
    move v0, v2

    .line 256
    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    if-eqz v0, :cond_2

    .line 265
    return-void

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_3

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->changeState(Z)Z

    .line 255
    return-void

    :cond_3
    move v1, v2

    .line 267
    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_TMOWFC:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 187
    :cond_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 178
    :cond_1
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->supportWFCStateUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->showDetail(Z)V

    .line 328
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isWfcEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 348
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NON_TRANSLATABLE_WFC_TITLE:Z

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 354
    :goto_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_TMB_ICON:Z

    if-eqz v0, :cond_1

    .line 355
    const v0, 0x7f0203fb

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 363
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->supportWFCStateUpdate()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    .line 345
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 356
    :cond_1
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_MTR_ICON:Z

    if-eqz v0, :cond_2

    .line 357
    const v0, 0x7f02039f

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    .line 358
    :cond_2
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_VZW_ICON:Z

    if-eqz v0, :cond_3

    .line 359
    const v0, 0x7f020402

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    .line 361
    :cond_3
    const v0, 0x7f020403

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    .line 363
    :cond_4
    const/4 v0, 0x1

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 345
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 213
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getTileSpec()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/systemui/qs/QSTile$Host;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    return v5

    .line 215
    :cond_0
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_RJILWFC:Z

    if-eqz v3, :cond_1

    .line 216
    invoke-static {}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isRJIOSimInserted()Z

    move-result v3

    return v3

    .line 218
    :cond_1
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_TMOWFC:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v3, :cond_2

    .line 219
    const-string/jumbo v3, "ro.csc.sales_code"

    const-string/jumbo v4, "unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "salesCode":Ljava/lang/String;
    const-string/jumbo v3, "ro.csc.omcnw_code"

    const-string/jumbo v4, "unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "omcNwCode":Ljava/lang/String;
    const-string/jumbo v3, "unknown"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 225
    .end local v1    # "omcNwCode":Ljava/lang/String;
    .end local v2    # "salesCode":Ljava/lang/String;
    :cond_2
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_WFC_REFRESH_BY_SIM:Z

    if-eqz v3, :cond_7

    .line 226
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "numeric":Ljava/lang/String;
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->IS_SER_POPUP:Z

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    const-string/jumbo v3, "25001"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "25002"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 229
    :cond_3
    return v6

    .line 222
    .end local v0    # "numeric":Ljava/lang/String;
    .restart local v1    # "omcNwCode":Ljava/lang/String;
    .restart local v2    # "salesCode":Ljava/lang/String;
    :cond_4
    return v5

    .line 232
    .end local v1    # "omcNwCode":Ljava/lang/String;
    .end local v2    # "salesCode":Ljava/lang/String;
    .restart local v0    # "numeric":Ljava/lang/String;
    :cond_5
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->IS_XSA_POPUP:Z

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    const-string/jumbo v3, "50502"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 233
    return v6

    .line 235
    :cond_6
    return v5

    .line 238
    .end local v0    # "numeric":Ljava/lang/String;
    :cond_7
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_WIFICALLING:Z

    return v3
.end method

.method public isEnhanced4gLTEEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 455
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voicecall_type"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mListening:Z

    if-ne v0, p1, :cond_0

    .line 195
    return-void

    .line 196
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mListening:Z

    .line 198
    if-eqz p1, :cond_2

    .line 199
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_TMOWFC:Z

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 201
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 200
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 205
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 204
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 193
    :goto_0
    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public supportWFCStateUpdate()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 427
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 428
    const-string/jumbo v3, "vowifi_menu_enable"

    .line 427
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    .line 429
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ATTWFC:Z

    if-eqz v0, :cond_3

    .line 430
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mInWifiCall:Z

    if-eqz v0, :cond_1

    .line 431
    return v2

    :cond_0
    move v0, v2

    .line 427
    goto :goto_0

    .line 434
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mActProcessATT:Z

    if-eqz v0, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v1

    goto :goto_1

    .line 437
    :cond_3
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_TMOWFC:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mInCall:Z

    if-eqz v0, :cond_4

    .line 438
    return v2

    .line 441
    :cond_4
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_RJILWFC:Z

    if-eqz v0, :cond_5

    .line 442
    invoke-static {}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isRJIOSimInserted()Z

    move-result v0

    return v0

    .line 445
    :cond_5
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ROGERSWFC:Z

    if-eqz v0, :cond_6

    .line 446
    return v1

    .line 448
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    if-eqz v0, :cond_7

    .line 449
    return v1

    .line 451
    :cond_7
    return v2
.end method
