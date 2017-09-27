.class public Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;
.super Ljava/lang/Object;
.source "VoWiFiStatusController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static VOWIFI_PACKAGE:Ljava/lang/String;

.field private static isSprWfcEnabled:Z

.field private static mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;


# instance fields
.field private mContext:Landroid/content/Context;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Landroid/app/StatusBarManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->refreshTilelist(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->updateVoWiFi(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->updateVoWifiState(Landroid/content/Context;)V

    return-void
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
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->DEBUG:Z

    .line 236
    const-string/jumbo v0, "com.oem.smartwifisupport"

    sput-object v0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->VOWIFI_PACKAGE:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v2, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;-><init>(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    .line 90
    sput-boolean v6, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isSprWfcEnabled:Z

    .line 92
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_SPRWFC:Z

    if-eqz v2, :cond_0

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.sec.sprint.wfc.VOWIFI_STATUS"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v2, "statusbar"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    .line 101
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "vowifi"

    const v4, 0x7f020704

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "vowifi"

    invoke-virtual {v2, v3, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 103
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->updateVoWifiState(Landroid/content/Context;)V

    .line 106
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "packageFilter":Landroid/content/IntentFilter;
    :cond_0
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_WFC_REFRESH_BY_SIM:Z

    if-eqz v2, :cond_1

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "VoWiFiController"

    const-string/jumbo v3, "VoWiFiStatusController created!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    return-void
.end method

.method public static getVowifiPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 274
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 276
    :try_start_0
    const-string/jumbo v3, "com.sec.sprint.wfc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 277
    .local v0, "appState":I
    const-string/jumbo v3, "com.sec.sprint.wfc"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 278
    .end local v0    # "appState":I
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "com.oem.smartwifisupport"

    return-object v3

    .line 282
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string/jumbo v3, "com.oem.smartwifisupport"

    return-object v3
.end method

.method public static getVowifiState()Z
    .locals 1

    .prologue
    .line 262
    invoke-static {}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isSED()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x0

    return v0

    .line 265
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isSprWfcEnabled:Z

    return v0
.end method

.method public static isPackageAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 286
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->getVowifiPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->VOWIFI_PACKAGE:Ljava/lang/String;

    .line 288
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->VOWIFI_PACKAGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 289
    .local v0, "appState":I
    const-string/jumbo v2, "VoWiFiController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "appState is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 291
    return v5

    .line 293
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 295
    .end local v0    # "appState":I
    :catch_0
    move-exception v1

    .line 296
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    return v5
.end method

.method public static isRJIOSimInserted()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 177
    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "mMCCMNC1":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "mMCCMNC2":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 180
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "mcc1":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 186
    .end local v2    # "mcc1":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 187
    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "mcc2":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 193
    .end local v3    # "mcc2":Ljava/lang/String;
    :goto_1
    const-string/jumbo v6, "405"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 194
    const-string/jumbo v6, "840"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "854"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "855"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 195
    const-string/jumbo v6, "856"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 195
    const-string/jumbo v6, "857"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 195
    const-string/jumbo v6, "858"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 196
    const-string/jumbo v6, "859"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 196
    const-string/jumbo v6, "860"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 196
    const-string/jumbo v6, "861"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 197
    const-string/jumbo v6, "862"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 197
    const-string/jumbo v6, "863"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 197
    const-string/jumbo v6, "864"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 198
    const-string/jumbo v6, "865"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 198
    const-string/jumbo v6, "866"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 198
    const-string/jumbo v6, "867"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 199
    const-string/jumbo v6, "868"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 199
    const-string/jumbo v6, "869"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 199
    const-string/jumbo v6, "870"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 200
    const-string/jumbo v6, "871"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 200
    const-string/jumbo v6, "872"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 200
    const-string/jumbo v6, "873"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 201
    const-string/jumbo v6, "874"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 201
    const-string/jumbo v6, "87"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 201
    const-string/jumbo v6, "780"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-nez v6, :cond_0

    .line 202
    const-string/jumbo v6, "78"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    if-eqz v6, :cond_3

    .line 203
    :cond_0
    return v8

    .line 183
    :cond_1
    const/4 v2, 0x0

    .line 184
    .local v2, "mcc1":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "mnc1":Ljava/lang/String;
    goto/16 :goto_0

    .line 190
    .end local v2    # "mcc1":Ljava/lang/String;
    .end local v4    # "mnc1":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .line 191
    .local v3, "mcc2":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "mnc2":Ljava/lang/String;
    goto/16 :goto_1

    .line 206
    .end local v3    # "mcc2":Ljava/lang/String;
    .end local v5    # "mnc2":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "405"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 207
    const-string/jumbo v6, "840"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "854"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "855"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 208
    const-string/jumbo v6, "856"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 208
    const-string/jumbo v6, "857"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 208
    const-string/jumbo v6, "858"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 209
    const-string/jumbo v6, "859"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 209
    const-string/jumbo v6, "860"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 209
    const-string/jumbo v6, "861"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 210
    const-string/jumbo v6, "862"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 210
    const-string/jumbo v6, "863"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 210
    const-string/jumbo v6, "864"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 211
    const-string/jumbo v6, "865"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 211
    const-string/jumbo v6, "866"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 211
    const-string/jumbo v6, "867"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 212
    const-string/jumbo v6, "868"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 212
    const-string/jumbo v6, "869"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 212
    const-string/jumbo v6, "870"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 213
    const-string/jumbo v6, "871"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 213
    const-string/jumbo v6, "872"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 213
    const-string/jumbo v6, "873"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 214
    const-string/jumbo v6, "874"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 214
    const-string/jumbo v6, "87"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 214
    const-string/jumbo v6, "780"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-nez v6, :cond_4

    .line 215
    const-string/jumbo v6, "78"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    if-eqz v6, :cond_5

    .line 216
    :cond_4
    return v8

    .line 219
    :cond_5
    const-string/jumbo v6, "406"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 220
    const-string/jumbo v6, "977"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "978"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "981"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 221
    const-string/jumbo v6, "994"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 220
    if-nez v6, :cond_6

    .line 221
    const-string/jumbo v6, "999"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 220
    if-eqz v6, :cond_7

    .line 222
    :cond_6
    return v8

    .line 225
    :cond_7
    const-string/jumbo v6, "406"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 226
    const-string/jumbo v6, "977"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "978"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "981"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 227
    const-string/jumbo v6, "994"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 226
    if-nez v6, :cond_8

    .line 227
    const-string/jumbo v6, "999"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 226
    if-eqz v6, :cond_9

    .line 228
    :cond_8
    return v8

    .line 232
    :cond_9
    return v7
.end method

.method private static isSED()Z
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Setting_ConfigOpMenuStructure"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "settings":Ljava/lang/String;
    const-string/jumbo v1, "Global"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v1, 0x1

    return v1

    .line 119
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private refreshTilelist(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    sget-object v0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->refreshTileList()V

    .line 171
    const-string/jumbo v0, "VoWiFiController"

    const-string/jumbo v1, "mhost refreshlist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    return-void
.end method

.method public static setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0
    .param p0, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 246
    sput-object p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 245
    return-void
.end method

.method public static setVowifiState(Z)V
    .locals 0
    .param p0, "sprWfcStatus"    # Z

    .prologue
    .line 269
    sput-boolean p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isSprWfcEnabled:Z

    .line 268
    return-void
.end method

.method private final updateVoWiFi(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    const-string/jumbo v4, "VOWIFI_STATUS_EXTRA_KEY"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "statusExtra":Ljava/lang/String;
    const/4 v2, 0x0

    .line 129
    .local v2, "visible":Z
    const/4 v3, 0x0

    .line 130
    .local v3, "vowifiIconId":I
    const/4 v0, 0x0

    .line 131
    .local v0, "contentDesc":Ljava/lang/String;
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "VoWiFiController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Received action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with extra: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    if-nez v1, :cond_1

    .line 134
    return-void

    .line 137
    :cond_1
    const-string/jumbo v4, "VOWIFI_SHOW_ROVE_IN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 139
    invoke-static {}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isSED()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 141
    const v3, 0x7f020703

    .line 145
    :goto_0
    const-string/jumbo v0, "VoWiFi Rove In"

    .line 146
    .local v0, "contentDesc":Ljava/lang/String;
    const/4 v2, 0x1

    .line 160
    .end local v0    # "contentDesc":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    if-eqz v4, :cond_4

    .line 161
    if-eqz v2, :cond_3

    .line 162
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v5, "vowifi"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6, v0}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 164
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v5, "vowifi"

    invoke-virtual {v4, v5, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 126
    :cond_4
    return-void

    .line 143
    .local v0, "contentDesc":Ljava/lang/String;
    :cond_5
    const v3, 0x7f020703

    goto :goto_0

    .line 147
    :cond_6
    const-string/jumbo v4, "VOWIFI_SHOW_ROVE_OUT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 149
    invoke-static {}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isSED()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 150
    const/4 v2, 0x0

    goto :goto_1

    .line 152
    :cond_7
    const/4 v2, 0x1

    .line 153
    const v3, 0x7f020704

    .line 154
    const-string/jumbo v0, "VoWiFi Rove Out"

    .local v0, "contentDesc":Ljava/lang/String;
    goto :goto_1

    .line 156
    .local v0, "contentDesc":Ljava/lang/String;
    :cond_8
    const-string/jumbo v4, "VOWIFI_HIDE_ICON"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateVoWifiState(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isSprWfcEnabled:Z

    .line 251
    .local v0, "oldState":Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isPackageAvailable(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isSprWfcEnabled:Z

    .line 252
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isSprWfcEnabled:Z

    if-eq v0, v1, :cond_0

    .line 253
    const-string/jumbo v1, "VoWiFiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mHost is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-object v1, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v1, :cond_0

    .line 255
    sget-object v1, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->refreshTileList()V

    .line 256
    const-string/jumbo v1, "VoWiFiController"

    const-string/jumbo v2, "mhost refreshlist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    return-void
.end method
