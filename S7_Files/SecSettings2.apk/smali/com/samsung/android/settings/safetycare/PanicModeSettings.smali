.class public Lcom/samsung/android/settings/safetycare/PanicModeSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PanicModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/safetycare/PanicModeSettings$1;,
        Lcom/samsung/android/settings/safetycare/PanicModeSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mList:Landroid/widget/ListView;

.field private mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

.field private mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

.field private mTempView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/safetycare/PanicModeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->updateSendSOSMessageSummary()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/samsung/android/settings/safetycare/PanicModeSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/samsung/android/settings/safetycare/PanicModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/safetycare/PanicModeSettings$1;-><init>(Lcom/samsung/android/settings/safetycare/PanicModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

    .line 50
    return-void
.end method

.method private updatePreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 145
    .local v0, "root":Landroid/preference/PreferenceScreen;
    const-string/jumbo v1, "key_safety_assistance_swa"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

    .line 146
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    const-string/jumbo v1, "key_safety_assistance_swa"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    :cond_0
    :goto_0
    return-object v0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0
.end method

.method private updateSendSOSMessageSummary()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "send_emergency_message"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 160
    .local v0, "bIsSendEmrMsgEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    const v1, 0x7f0b19db

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 157
    .end local v0    # "bIsSendEmrMsgEnabled":Z
    :cond_0
    return-void

    .line 159
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bIsSendEmrMsgEnabled":Z
    goto :goto_0

    .line 160
    :cond_2
    const v1, 0x7f0b19dc

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x11f8

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mTempView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401b1

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "header":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->rebuildLayout(Landroid/view/View;)V

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mList:Landroid/widget/ListView;

    .line 172
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 174
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 165
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const-string/jumbo v0, "PanicModeSettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->addPreferencesFromResource(I)V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "v":Landroid/view/View;
    const-string/jumbo v2, "PanicModeSettings"

    const-string/jumbo v3, "onCreateView"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0401b1

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, "header":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->rebuildLayout(Landroid/view/View;)V

    .line 102
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mList:Landroid/widget/ListView;

    .line 103
    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 105
    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 107
    :cond_0
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_0

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 133
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 134
    const-string/jumbo v0, "PanicModeSettings"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->updatePreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->updateSendSOSMessageSummary()V

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "send_emergency_message"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    :cond_0
    return-void
.end method

.method public rebuildLayout(Landroid/view/View;)V
    .locals 5
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mTempView:Landroid/view/View;

    .line 112
    const v4, 0x7f1104ee

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 113
    .local v3, "mTitleView":Landroid/widget/TextView;
    const v4, 0x7f1104ef

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 114
    .local v2, "mSummaryView":Landroid/widget/TextView;
    const v4, 0x7f1104ed

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 116
    .local v1, "mAnimationView":Landroid/widget/ImageView;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 119
    const v4, 0x7f0b0483

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 123
    :goto_0
    const v4, 0x7f02038d

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 126
    .local v0, "ani":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 110
    :cond_0
    return-void

    .line 121
    .end local v0    # "ani":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    const v4, 0x7f0b0482

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
