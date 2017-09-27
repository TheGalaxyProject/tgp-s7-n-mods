.class public Lcom/android/settings/wifi/WifiSetupActivity;
.super Lcom/android/settings/wifi/WifiPickerActivity;
.source "WifiSetupActivity.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSetupActivity$1;,
        Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;
    }
.end annotation


# instance fields
.field private mAutoFinishOnConnection:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsNetworkRequired:Z

.field private mIsWifiRequired:Z

.field private mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserSelectedNetwork:Z

.field private mWifiConnected:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/wifi/WifiSetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->refreshConnectionState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPickerActivity;-><init>()V

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    .line 77
    new-instance v0, Lcom/android/settings/wifi/WifiSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSetupActivity$1;-><init>(Lcom/android/settings/wifi/WifiSetupActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    return-void
.end method

.method private isNetworkConnected()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 235
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 236
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 237
    return v2

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 240
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    :cond_1
    return v2
.end method

.method private isWifiConnected()Z
    .locals 3

    .prologue
    .line 116
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 117
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 118
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 119
    .local v1, "wifiConnected":Z
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mWifiConnected:Z

    .line 120
    return v1

    .line 117
    .end local v1    # "wifiConnected":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshConnectionState()V
    .locals 4

    .prologue
    const v1, 0x7f0b10ef

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mAutoFinishOnConnection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    if-eqz v0, :cond_0

    .line 126
    const-string/jumbo v0, "WifiSetupActivity"

    const-string/jumbo v1, "Auto-finishing with connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->finish(I)V

    .line 130
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    .line 132
    :cond_0
    const v0, 0x7f0b016e

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonText(I)V

    .line 133
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonEnabled(Z)V

    .line 123
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mIsWifiRequired:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mIsNetworkRequired:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonText(I)V

    .line 146
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonEnabled(Z)V

    goto :goto_0

    .line 138
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonText(I)V

    .line 139
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonEnabled(Z)V

    goto :goto_0
.end method

.method private setNextButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 150
    :cond_0
    return-void
.end method

.method private setNextButtonText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public finish(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 200
    const-string/jumbo v0, "WifiSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finishing, resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSetupActivity;->setResult(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->finish()V

    .line 199
    return-void
.end method

.method getWifiSettingsClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/preference/PreferenceFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    const-class v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 188
    const-class v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method networkSelected()V
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "WifiSetupActivity"

    const-string/jumbo v1, "Network selected by user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    .line 162
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiPickerActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 181
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v2, "wifi_auto_finish_on_connect"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mAutoFinishOnConnection:Z

    .line 96
    const-string/jumbo v2, "is_network_required"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mIsNetworkRequired:Z

    .line 97
    const-string/jumbo v2, "is_wifi_required"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mIsWifiRequired:Z

    .line 99
    const-string/jumbo v2, "wifi_require_user_network_selection"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    .line 88
    return-void

    .line 99
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->onBackPressed()V

    .line 212
    return-void
.end method

.method public onNavigateNext()V
    .locals 4

    .prologue
    .line 218
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mWifiConnected:Z

    if-eqz v1, :cond_0

    .line 219
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->finish(I)V

    .line 217
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0b12ab

    .line 225
    .local v0, "message":I
    :goto_1
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;->newInstance(I)Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    .end local v0    # "message":I
    :cond_1
    const v0, 0x7f0b12ac

    goto :goto_1
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizardlib/view/NavigationBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/setupwizardlib/view/NavigationBar;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    .line 207
    invoke-virtual {p1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 208
    invoke-static {p0}, Lcom/android/settings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 205
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    invoke-super {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->onPause()V

    .line 175
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 111
    const-string/jumbo v0, "userSelectedNetwork"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->onResume()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->refreshConnectionState()V

    .line 168
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    const-string/jumbo v0, "userSelectedNetwork"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    return-void
.end method
