.class public Lcom/android/settings/wifi/WifiSettingsForSetupWizard;
.super Lcom/android/settings/wifi/WifiSettings;
.source "WifiSettingsForSetupWizard.java"


# instance fields
.field private mEmptyFooter:Landroid/widget/TextView;

.field private mLayout:Lcom/android/setupwizardlib/SetupWizardListLayout;

.field private mListLastEmpty:Z

.field private mMacAddressFooter:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mListLastEmpty:Z

    .line 45
    return-void
.end method

.method private updateMacAddress()V
    .locals 5

    .prologue
    .line 191
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mMacAddressFooter:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "macAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_0

    .line 194
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 195
    .local v0, "connectionInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 200
    .end local v0    # "connectionInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "macAddress":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mMacAddressFooter:Landroid/view/View;

    const v4, 0x7f110641

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 201
    .local v2, "macAddressTextView":Landroid/widget/TextView;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .end local v2    # "macAddressTextView":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 202
    .restart local v2    # "macAddressTextView":Landroid/widget/TextView;
    :cond_2
    const v3, 0x7f0b13a5

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected connect(I)V
    .locals 1
    .param p1, "networkId"    # I

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSetupActivity;

    .line 142
    .local v0, "activity":Lcom/android/settings/wifi/WifiSetupActivity;
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSetupActivity;->networkSelected()V

    .line 143
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->connect(I)V

    .line 140
    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSetupActivity;

    .line 135
    .local v0, "activity":Lcom/android/settings/wifi/WifiSetupActivity;
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSetupActivity;->networkSelected()V

    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 133
    return-void
.end method

.method protected createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initEmptyTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 149
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x7f04028d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    .line 150
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    return-object v1
.end method

.method public onAccessPointsChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->onAccessPointsChanged()V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 100
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->updateFooter(Z)V

    .line 97
    return-void

    :cond_1
    move v1, v2

    .line 100
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->updateMacAddress()V

    .line 86
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 128
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->applyImmersiveFlags(Landroid/app/Dialog;)V

    .line 129
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 121
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 59
    const v3, 0x7f04028e

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 58
    check-cast v3, Lcom/android/setupwizardlib/SetupWizardListLayout;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardListLayout;

    .line 60
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardListLayout;

    invoke-virtual {v3}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 73
    .local v1, "list":Landroid/widget/ListView;
    const v3, 0x7f04028f

    invoke-virtual {p1, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mMacAddressFooter:Landroid/view/View;

    .line 74
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mMacAddressFooter:Landroid/view/View;

    invoke-virtual {v1, v3, v5, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 76
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardListLayout;

    invoke-virtual {v3}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v2

    .line 77
    .local v2, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSetupActivity;

    .line 79
    .local v0, "activity":Lcom/android/settings/wifi/WifiSetupActivity;
    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiSetupActivity;->onNavigationBarCreated(Lcom/android/setupwizardlib/view/NavigationBar;)V

    .line 82
    .end local v0    # "activity":Lcom/android/settings/wifi/WifiSetupActivity;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardListLayout;

    return-object v3
.end method

.method public onWifiStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->updateMacAddress()V

    .line 104
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 110
    return-void
.end method

.method public setPinnedHeaderView(I)Landroid/view/View;
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 0
    .param p1, "pinnedHeader"    # Landroid/view/View;

    .prologue
    .line 175
    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardListLayout;

    if-eqz v0, :cond_0

    .line 182
    if-eqz p1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardListLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->showProgressBar()V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mLayout:Lcom/android/setupwizardlib/SetupWizardListLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->hideProgressBar()V

    goto :goto_0
.end method

.method protected updateFooter(Z)V
    .locals 2
    .param p1, "isEmpty"    # Z

    .prologue
    .line 154
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mListLastEmpty:Z

    if-eq p1, v1, :cond_0

    .line 155
    if-eqz p1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->setFooterView(Landroid/view/View;)V

    .line 164
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mListLastEmpty:Z

    .line 153
    :cond_0
    return-void

    .line 158
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mMacAddressFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->setFooterView(Landroid/view/View;)V

    goto :goto_0
.end method
