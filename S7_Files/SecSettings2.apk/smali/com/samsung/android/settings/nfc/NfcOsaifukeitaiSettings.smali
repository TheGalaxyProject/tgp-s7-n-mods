.class public Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "NfcOsaifukeitaiSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final CSC_SALES_CODE:Ljava/lang/String;

.field private final OMC_SALES_CODE:Ljava/lang/String;

.field private final carrier:Ljava/lang/String;

.field private mABeam:Landroid/preference/PreferenceScreen;

.field private mCashbee:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mDcmPaymentSettings:Landroid/preference/PreferenceScreen;

.field private mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

.field private mLockNumInit:Landroid/preference/PreferenceScreen;

.field private mLockNumchg:Landroid/preference/PreferenceScreen;

.field private mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private mNfcRemotelock:Landroid/preference/PreferenceScreen;

.field private mNfcTypeSettings:Landroid/preference/PreferenceScreen;

.field private mNfclock:Landroid/preference/PreferenceScreen;

.field private mRWp2p:Landroid/preference/PreferenceScreen;

.field private mRoot:Landroid/preference/PreferenceScreen;

.field private mSetLayout:Z

.field myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 72
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    .line 73
    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->OMC_SALES_CODE:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->CSC_SALES_CODE:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->OMC_SALES_CODE:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->carrier:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 82
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 83
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    .line 84
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    .line 85
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mDcmPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 86
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mCashbee:Landroid/preference/PreferenceScreen;

    .line 87
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumchg:Landroid/preference/PreferenceScreen;

    .line 88
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/preference/PreferenceScreen;

    .line 89
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 90
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    .line 91
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mRoot:Landroid/preference/PreferenceScreen;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mSetLayout:Z

    .line 67
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0x45

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 102
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    const-string/jumbo v0, "[NfcOsaifukeitaiSettings]"

    const-string/jumbo v1, "[S] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    .line 113
    .local v9, "actionBar":Landroid/app/ActionBar;
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    .line 115
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->addPreferencesFromResource(I)V

    .line 117
    const-string/jumbo v0, "toggle_osaifukeitai_lock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 118
    const-string/jumbo v0, "toggle_nfc"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 119
    const-string/jumbo v0, "toggle_android_beam"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    .line 120
    const-string/jumbo v0, "nfc_type_settings_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    .line 121
    const-string/jumbo v0, "nfc_payment_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mDcmPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 122
    const-string/jumbo v0, "toggle_nfc_mobile_cashbee"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mCashbee:Landroid/preference/PreferenceScreen;

    .line 123
    const-string/jumbo v0, "toggle_lock_number_change"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumchg:Landroid/preference/PreferenceScreen;

    .line 124
    const-string/jumbo v0, "toggle_lock_number_initialization"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/preference/PreferenceScreen;

    .line 125
    const-string/jumbo v0, "nfc_payment_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 126
    const-string/jumbo v0, "toggle_osaifukeitai_remotelock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mRoot:Landroid/preference/PreferenceScreen;

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->carrier:Ljava/lang/String;

    const-string/jumbo v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mDcmPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;-><init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    .line 145
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->onCreate(Landroid/content/Context;)V

    .line 147
    const v0, 0x7f0b1b8a

    invoke-virtual {v9, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 150
    :cond_1
    const-string/jumbo v0, "[NfcOsaifukeitaiSettings]"

    const-string/jumbo v1, "[E] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void

    .line 129
    :cond_2
    const-string/jumbo v1, "KDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    const-string/jumbo v0, "SENN82AB"

    const-string/jumbo v1, "S3FWRN5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getMobileCashbee_DisplayJudging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    :goto_1
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mCashbee:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumchg:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mRoot:Landroid/preference/PreferenceScreen;

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;-><init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    goto :goto_0

    .line 129
    :cond_3
    const-string/jumbo v1, "SBM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;-><init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    goto :goto_0

    .line 135
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "[NfcOsaifukeitaiSettings]"

    const-string/jumbo v1, "[S] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->onPause(Landroid/content/Context;)V

    .line 183
    :cond_0
    const-string/jumbo v0, "[NfcOsaifukeitaiSettings]"

    const-string/jumbo v1, "[E] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 171
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 158
    const-string/jumbo v0, "[NfcOsaifukeitaiSettings]"

    const-string/jumbo v1, "[S] resume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    if-nez v0, :cond_0

    .line 162
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->onResume(Landroid/content/Context;)V

    .line 168
    const-string/jumbo v0, "[NfcOsaifukeitaiSettings]"

    const-string/jumbo v1, "[E] resume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 153
    return-void
.end method
