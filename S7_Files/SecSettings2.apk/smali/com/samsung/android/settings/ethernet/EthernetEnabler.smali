.class public Lcom/samsung/android/settings/ethernet/EthernetEnabler;
.super Ljava/lang/Object;
.source "EthernetEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;,
        Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

.field private mEthConfigPref:Landroid/preference/Preference;

.field private mEthManager:Landroid/net/EthernetManager;

.field private final mEthStateReceiver:Landroid/content/BroadcastReceiver;

.field private mEthernetSettings:Lcom/samsung/android/settings/ethernet/EthernetSettings;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private mStartMode:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/net/EthernetManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/ethernet/EthernetEnabler;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->postEnableTaskFinishedUIUpdate(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/EthernetManager;Landroid/preference/CheckBoxPreference;Landroid/preference/Preference;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ethernetManager"    # Landroid/net/EthernetManager;
    .param p3, "ethernetCheckBoxPreference"    # Landroid/preference/CheckBoxPreference;
    .param p4, "ethernetConfigPreference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mStartMode:I

    .line 57
    new-instance v0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;-><init>(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthStateReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    .line 144
    iput-object p3, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 145
    iput-object p4, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthConfigPref:Landroid/preference/Preference;

    .line 146
    iput-object p2, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    .line 148
    invoke-virtual {p3}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v0}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b104f

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 202
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 205
    iput v2, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mStartMode:I

    .line 142
    return-void
.end method

.method private postEnableTaskFinishedUIUpdate(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 118
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz p1, :cond_0

    const v0, 0x7f0b104f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 111
    return-void

    .line 119
    :cond_0
    const v0, 0x7f0b0b7e

    goto :goto_0
.end method


# virtual methods
.method public getManager()Landroid/net/EthernetManager;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 257
    const-string/jumbo v1, "SettingsEthEnabler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceChange : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    .line 259
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/EthernetManager;->setUserDisabled(Z)V

    .line 262
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->setEthEnabled(Z)V

    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mStartMode:I

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 248
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 214
    iget v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mStartMode:I

    if-eq v0, v3, :cond_0

    .line 215
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mStartMode:I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v0}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b104f

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 213
    :cond_1
    return-void
.end method

.method public setCheckBox(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 307
    const-string/jumbo v1, "SettingsEthEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCheckBox  req state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "now state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v3}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v1}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v0

    .line 325
    .local v0, "isConnect":Z
    if-eqz v0, :cond_0

    .line 326
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 306
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setConfigDialog(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)V
    .locals 0
    .param p1, "Dialog"    # Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    .line 76
    return-void
.end method

.method public setEthEnabled(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 270
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v1}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v0

    .line 272
    .local v0, "state":Z
    const-string/jumbo v1, "SettingsEthEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEthEnabled enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v1}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const-string/jumbo v1, "SettingsEthEnabler"

    const-string/jumbo v2, "update enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->postEnableTaskFinishedUIUpdate(Z)V

    .line 278
    return-void

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 284
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 300
    new-instance v1, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;

    invoke-direct {v1, p0, v7}, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;-><init>(Lcom/samsung/android/settings/ethernet/EthernetEnabler;Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;)V

    new-array v2, v4, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 267
    :goto_0
    return-void

    .line 302
    :cond_1
    new-instance v1, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;

    invoke-direct {v1, p0, v7}, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;-><init>(Lcom/samsung/android/settings/ethernet/EthernetEnabler;Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;)V

    new-array v2, v4, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setEthernetSettings(Lcom/samsung/android/settings/ethernet/EthernetSettings;)V
    .locals 0
    .param p1, "EthSettings"    # Lcom/samsung/android/settings/ethernet/EthernetSettings;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthernetSettings:Lcom/samsung/android/settings/ethernet/EthernetSettings;

    .line 80
    return-void
.end method
