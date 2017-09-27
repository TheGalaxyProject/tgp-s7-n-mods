.class public Lcom/samsung/android/settings/location/LocationSettingsEnabler;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationSettingsEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;
    }
.end annotation


# instance fields
.field private mActive:Z

.field private final mContext:Landroid/content/Context;

.field private final mLocationModeObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mSwitchPref:Landroid/preference/SwitchPreference;

.field private mValidListener:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/location/LocationSettingsEnabler;I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->updatePrefSummary(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchPreference_"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 61
    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    .line 73
    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mActive:Z

    .line 75
    new-instance v0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    .line 97
    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    .line 98
    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 99
    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitch:Landroid/widget/Switch;

    .line 100
    iput-object p2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 101
    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar_"    # Lcom/android/settings/widget/SwitchBar;

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 61
    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    .line 73
    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mActive:Z

    .line 75
    new-instance v0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    .line 89
    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitch:Landroid/widget/Switch;

    .line 91
    iput-object p2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 93
    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    .line 88
    return-void
.end method

.method private updatePrefSummary(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 145
    if-nez p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 150
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 144
    :goto_1
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b1484

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b1483

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 158
    :pswitch_2
    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b07e0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b07df

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b07e1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b1482

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 173
    :pswitch_3
    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b07dd

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b07dc

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 180
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b07de

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 183
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b1481

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public onLocationOptionChange(Ljava/lang/Object;Z)Z
    .locals 13
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Z

    .prologue
    .line 260
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 261
    const-string/jumbo v10, "gps"

    .line 260
    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 262
    .local v4, "isGpsOn":Z
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    .line 263
    const-string/jumbo v10, "content://com.sec.knox.provider/LocationPolicy"

    .line 264
    const-string/jumbo v11, "isGPSStateChangeAllowed"

    const/4 v12, 0x0

    .line 262
    invoke-static {v9, v10, v11, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 265
    .local v5, "isLocationGPSStateChangeAllowed":I
    if-eqz v4, :cond_0

    if-nez v5, :cond_0

    const/4 v3, 0x1

    .line 266
    .local v3, "isGpsEnforced":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 267
    const/4 v9, 0x1

    return v9

    .line 265
    .end local v3    # "isGpsEnforced":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 268
    .restart local v3    # "isGpsEnforced":Z
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v9, :cond_2

    .line 269
    iget-object v10, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f100216

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    if-eqz p2, :cond_3

    const/16 v9, 0x3e8

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 272
    :cond_2
    if-eqz p2, :cond_6

    .line 273
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    .line 274
    const-string/jumbo v10, "CscFeature_Common_SupportHuxGpsPromptLocation"

    .line 273
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 275
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->showVzwLocationConsentDialog(Landroid/content/Context;)V

    .line 359
    :goto_2
    const/4 v9, 0x1

    return v9

    .line 269
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 277
    :cond_4
    const-string/jumbo v9, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 279
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 280
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b07bf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 281
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b07c0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 282
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 283
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0431

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 284
    new-instance v10, Lcom/samsung/android/settings/location/LocationSettingsEnabler$2;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$2;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)V

    .line 283
    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0432

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 291
    new-instance v10, Lcom/samsung/android/settings/location/LocationSettingsEnabler$3;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$3;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)V

    .line 290
    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 298
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 300
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->setLocationMode(Landroid/content/Context;I)V

    goto :goto_2

    .line 305
    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    .line 306
    const-string/jumbo v10, "CscFeature_Setting_SupportWifiCall"

    .line 305
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 307
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "wifi_call_enable"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/settings/VoWiFiCallingDBManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 309
    .local v8, "wifiCallState":I
    const-string/jumbo v9, "RWC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "FMC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 315
    :goto_3
    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    if-eqz v6, :cond_9

    .line 319
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b07e2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 320
    .local v7, "message":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 321
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b07e3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 323
    :cond_7
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 324
    .local v2, "disableDialog":Landroid/app/AlertDialog$Builder;
    const v9, 0x7f0b07e4

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 325
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 326
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 328
    new-instance v9, Lcom/samsung/android/settings/location/LocationSettingsEnabler$4;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$4;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)V

    .line 327
    const v10, 0x7f0b153f

    invoke-virtual {v2, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 340
    new-instance v9, Lcom/samsung/android/settings/location/LocationSettingsEnabler$5;

    invoke-direct {v9, p0, p1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$5;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;Ljava/lang/Object;)V

    .line 339
    const v10, 0x7f0b1540

    invoke-virtual {v2, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 350
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 309
    .end local v2    # "disableDialog":Landroid/app/AlertDialog$Builder;
    .end local v7    # "message":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x1

    .local v6, "isRogergs":Z
    goto :goto_3

    .line 352
    .end local v6    # "isRogergs":Z
    :cond_9
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->setLocationMode(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 355
    .end local v8    # "wifiCallState":I
    :cond_a
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->setLocationMode(Landroid/content/Context;I)V

    goto/16 :goto_2
.end method

.method public onModeChanged(IZ)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 194
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 195
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->updatePrefSummary(I)V

    .line 200
    :cond_0
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    .line 202
    .local v0, "enabled":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_2

    .line 203
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-eq v0, v2, :cond_2

    .line 206
    iget-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 211
    iget-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v2, :cond_2

    .line 212
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_2

    .line 213
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 218
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    .line 219
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz p2, :cond_6

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 220
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_4

    .line 223
    iget-boolean v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 225
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 227
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 228
    iget-boolean v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v1, :cond_4

    .line 229
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    .line 230
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 235
    :cond_4
    const-string/jumbo v1, "LocationSettingsEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onModeChanged : mSwitch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 200
    .end local v0    # "enabled":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 219
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 240
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 241
    const-string/jumbo v6, "gps"

    .line 240
    invoke-static {v3, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 242
    .local v1, "isGpsOn":Z
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    .line 243
    const-string/jumbo v6, "content://com.sec.knox.provider/LocationPolicy"

    .line 244
    const-string/jumbo v7, "isGPSStateChangeAllowed"

    const/4 v8, 0x0

    .line 242
    invoke-static {v3, v6, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 245
    .local v2, "isLocationGPSStateChangeAllowed":I
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    move v0, v4

    .line 246
    .local v0, "isGpsEnforced":Z
    :goto_0
    if-eqz v0, :cond_1

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 247
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 248
    return v5

    .end local v0    # "isGpsEnforced":Z
    :cond_0
    move v0, v5

    .line 245
    goto :goto_0

    .line 250
    .restart local v0    # "isGpsEnforced":Z
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onLocationOptionChange(Ljava/lang/Object;Z)Z

    .line 251
    return v4
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "value"    # Z

    .prologue
    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onLocationOptionChange(Ljava/lang/Object;Z)Z

    .line 255
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 134
    iget-boolean v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 110
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 112
    .local v0, "mode":I
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 113
    const-string/jumbo v2, "location_providers_allowed"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x2

    .line 112
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 116
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    .line 117
    iget-boolean v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 119
    iput-boolean v5, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->updatePrefSummary(I)V

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->refreshLocationMode(Landroid/content/Context;)V

    .line 109
    return-void
.end method
