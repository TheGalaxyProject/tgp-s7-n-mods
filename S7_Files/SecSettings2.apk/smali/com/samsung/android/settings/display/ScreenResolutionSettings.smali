.class public Lcom/samsung/android/settings/display/ScreenResolutionSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ScreenResolutionSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mSaveButton:Landroid/widget/Button;

.field private mScreenChangeState:Z

.field private mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenChangeState:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/display/ScreenResolutionSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenChangeState:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenChangeState:Z

    .line 181
    new-instance v0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 33
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x2e

    return v0
.end method

.method initswitchBtn()V
    .locals 8

    .prologue
    const v7, 0x7f020506

    const/4 v3, 0x0

    .line 123
    const-string/jumbo v5, "ScreenResolutionSettings"

    const-string/jumbo v6, "PSM initswitchBtn"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 125
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mActionBar:Landroid/app/ActionBar;

    .line 126
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mActionBar:Landroid/app/ActionBar;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 127
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mActionBar:Landroid/app/ActionBar;

    const v6, 0x7f040097

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 128
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 129
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 130
    .local v1, "customView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/Toolbar;

    .line 131
    .local v4, "parent":Landroid/widget/Toolbar;
    invoke-virtual {v4, v3, v3}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 132
    if-eqz v1, :cond_2

    .line 133
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    const v5, 0x7f11021a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 135
    .local v2, "headerBar":Landroid/widget/LinearLayout;
    const v5, 0x7f0200d8

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 137
    .end local v2    # "headerBar":Landroid/widget/LinearLayout;
    :cond_0
    const v5, 0x7f11021b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mCancelButton:Landroid/widget/Button;

    .line 138
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mCancelButton:Landroid/widget/Button;

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 139
    const v5, 0x7f11021c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    .line 140
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 142
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mCancelButton:Landroid/widget/Button;

    new-instance v6, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    const v6, 0x7f0b042b

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    new-instance v6, Lcom/samsung/android/settings/display/ScreenResolutionSettings$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings$3;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 165
    const-string/jumbo v6, "show_button_background"

    .line 164
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 166
    .local v3, "isEnabledShowBtnBg":Z
    :cond_1
    if-eqz v3, :cond_2

    .line 167
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 168
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 122
    .end local v3    # "isEnabledShowBtnBg":Z
    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 91
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    .line 62
    const v1, 0x7f0800d2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->addPreferencesFromResource(I)V

    .line 63
    const-string/jumbo v1, "screen_resolution_seekbar"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    .line 65
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v0

    .line 66
    .local v0, "currentResolution":I
    if-eqz p1, :cond_0

    .line 67
    const-string/jumbo v1, "selected_value"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 70
    :cond_0
    const-string/jumbo v1, "WQHD,FHD,HD"

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->setMax(I)V

    .line 74
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->setProgress(I)V

    .line 81
    :goto_0
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 56
    return-void

    .line 77
    :cond_2
    const-string/jumbo v1, "screen_resolution_seekbar"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->initswitchBtn()V

    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ScreenResolution"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 113
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 110
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 178
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "low_power"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 100
    .local v0, "isPSMEnabled":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 101
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->setEnabled(Z)V

    .line 102
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "ScreenResolution"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 97
    return-void

    .line 99
    .end local v0    # "isPSMEnabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isPSMEnabled":Z
    goto :goto_0

    :cond_2
    move v1, v3

    .line 101
    goto :goto_1

    :cond_3
    move v2, v3

    .line 102
    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    const-string/jumbo v0, "selected_value"

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method
