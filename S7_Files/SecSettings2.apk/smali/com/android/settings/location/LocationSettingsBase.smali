.class public abstract Lcom/android/settings/location/LocationSettingsBase;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LocationSettingsBase.java"


# instance fields
.field private mActive:Z

.field private mCurrentMode:I

.field protected mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/location/LocationSettingsBase;Landroid/content/Context;ZI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .param p3, "locationMode"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/location/LocationSettingsBase;->setVzwProviderAndMode(Landroid/content/Context;ZI)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    .line 53
    return-void
.end method

.method private setVzwProviderAndMode(Landroid/content/Context;ZI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .param p3, "locationMode"    # I

    .prologue
    .line 255
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportHuxGpsEnableVzwLbsStack"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vzw_lbs"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 259
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(Landroid/content/Context;I)V

    .line 254
    :cond_1
    return-void
.end method


# virtual methods
.method public isRestricted(Landroid/content/Context;)Z
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const-string/jumbo v17, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserManager;

    .line 127
    .local v16, "um":Landroid/os/UserManager;
    const-string/jumbo v17, "no_share_location"

    invoke-virtual/range {v16 .. v17}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v9

    .line 129
    .local v9, "isRestricted":Z
    const/4 v11, 0x0

    .line 131
    .local v11, "mdmRestricted":Z
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    .line 132
    const-string/jumbo v17, "gps"

    const/16 v18, 0x0

    aput-object v17, v13, v18

    .line 134
    .local v13, "selectionArgsGPS":[Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    .line 135
    const-string/jumbo v17, "network"

    const/16 v18, 0x0

    aput-object v17, v14, v18

    .line 137
    .local v14, "selectionArgsNetwork":[Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    .line 138
    const-string/jumbo v17, "false"

    const/16 v18, 0x0

    aput-object v17, v12, v18

    .line 140
    .local v12, "selectionArgsFalse":[Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    .line 141
    const/16 v17, 0x0

    const/16 v18, 0x0

    aput-object v17, v15, v18

    .line 144
    .local v15, "selectionArgsNull":[Ljava/lang/String;
    const-string/jumbo v17, "content://com.sec.knox.provider/RestrictionPolicy3"

    .line 145
    const-string/jumbo v18, "isSettingsChangesAllowed"

    .line 143
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 147
    .local v10, "isSettingsChangesAllowed":I
    const-string/jumbo v17, "content://com.sec.knox.provider/LocationPolicy"

    .line 148
    const-string/jumbo v18, "isLocationProviderBlocked"

    .line 146
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v13}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 151
    .local v7, "isLocationProviderBlockedGPS":I
    const-string/jumbo v17, "content://com.sec.knox.provider/LocationPolicy"

    .line 152
    const-string/jumbo v18, "isLocationProviderBlocked"

    .line 150
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v14}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 155
    .local v8, "isLocationProviderBlockedNetwork":I
    const-string/jumbo v17, "content://com.sec.knox.provider/LocationPolicy"

    .line 156
    const-string/jumbo v18, "isGPSStateChangeAllowed"

    .line 154
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v15}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 157
    .local v6, "isLocationGPSStateChangeAllowed":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 158
    const-string/jumbo v18, "gps"

    .line 157
    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    .line 159
    .local v5, "isGpsOn":Z
    const-string/jumbo v17, "LocationSettingsBase"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isSettingsChangesAllowed = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 160
    const-string/jumbo v19, ", isLocationProviderBlockedGPS = "

    .line 159
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 161
    const-string/jumbo v19, ", isLocationProviderBlockedNetwork = "

    .line 159
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 162
    const-string/jumbo v19, ", isLocationGPSStateChangeAllowed = "

    .line 159
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_1

    .line 165
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    const/4 v3, 0x1

    .line 166
    .local v3, "isGpsBlocked":Z
    :goto_0
    if-eqz v5, :cond_3

    if-nez v6, :cond_3

    const/4 v4, 0x1

    .line 167
    .local v4, "isGpsEnforced":Z
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_0

    .line 168
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    .line 169
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_0

    .line 170
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_0

    .line 171
    if-eqz v3, :cond_4

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_4

    .line 173
    :goto_2
    const/4 v11, 0x1

    .line 176
    :cond_0
    const-string/jumbo v17, "LocationSettingsBase"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isRestricted()   mdmRestricted= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " UserRestricted = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-nez v9, :cond_5

    .end local v11    # "mdmRestricted":Z
    :goto_3
    return v11

    .line 164
    .end local v3    # "isGpsBlocked":Z
    .end local v4    # "isGpsEnforced":Z
    .restart local v11    # "mdmRestricted":Z
    :cond_1
    const/4 v3, 0x1

    .restart local v3    # "isGpsBlocked":Z
    goto :goto_0

    .line 165
    .end local v3    # "isGpsBlocked":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "isGpsBlocked":Z
    goto :goto_0

    .line 166
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "isGpsEnforced":Z
    goto :goto_1

    .line 172
    :cond_4
    if-nez v10, :cond_0

    goto :goto_2

    .line 179
    :cond_5
    const/4 v11, 0x1

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "enterprise_policy_new"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 85
    .local v0, "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getLocationPolicy()Lcom/samsung/android/knox/location/LocationPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    .line 89
    :cond_0
    new-instance v1, Lcom/android/settings/location/LocationSettingsBase$1;

    invoke-direct {v1, p0}, Lcom/android/settings/location/LocationSettingsBase$1;-><init>(Lcom/android/settings/location/LocationSettingsBase;)V

    iput-object v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    return-void
.end method

.method public abstract onModeChanged(IZ)V
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    .line 110
    return-void

    .line 113
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method public refreshLocationMode(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    if-eqz v1, :cond_2

    .line 214
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    .line 215
    const/4 v3, 0x0

    .line 214
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 216
    .local v0, "mode":I
    iput v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mCurrentMode:I

    .line 217
    const-string/jumbo v1, "LocationSettingsBase"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    const-string/jumbo v1, "LocationSettingsBase"

    const-string/jumbo v2, "Location mode has been changed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->isRestricted(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/location/LocationSettingsBase;->onModeChanged(IZ)V

    .line 210
    .end local v0    # "mode":I
    :cond_2
    return-void
.end method

.method public setLocationMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->isRestricted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    const-string/jumbo v1, "LocationSettingsBase"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const-string/jumbo v1, "LocationSettingsBase"

    const-string/jumbo v2, "Restricted user, not setting location mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    .line 191
    const/4 v3, 0x0

    .line 190
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 193
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    if-eqz v1, :cond_2

    .line 195
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/android/settings/location/LocationSettingsBase;->onModeChanged(IZ)V

    .line 197
    :cond_2
    return-void

    .line 199
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "CURRENT_MODE"

    iget v2, p0, Lcom/android/settings/location/LocationSettingsBase;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    const-string/jumbo v1, "NEW_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const-string/jumbo v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->updateVerizonProvider(Landroid/content/Context;)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->refreshLocationMode(Landroid/content/Context;)V

    .line 183
    return-void
.end method

.method public showVzwLocationConsentDialog(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "consentText":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b07f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "consentText":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b07f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0431

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/location/LocationSettingsBase$2;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/location/LocationSettingsBase$2;-><init>(Lcom/android/settings/location/LocationSettingsBase;Landroid/content/Context;)V

    .line 234
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0432

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/location/LocationSettingsBase$3;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/location/LocationSettingsBase$3;-><init>(Lcom/android/settings/location/LocationSettingsBase;Landroid/content/Context;)V

    .line 234
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 245
    new-instance v2, Lcom/android/settings/location/LocationSettingsBase$4;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/location/LocationSettingsBase$4;-><init>(Lcom/android/settings/location/LocationSettingsBase;Landroid/content/Context;)V

    .line 234
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 225
    .end local v0    # "consentText":Ljava/lang/String;
    :cond_0
    return-void

    .line 232
    .local v0, "consentText":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b07f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "consentText":Ljava/lang/String;
    goto :goto_0
.end method

.method public updateVerizonProvider(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    .line 264
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->isRestricted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const-string/jumbo v2, "LocationSettingsBase"

    const-string/jumbo v3, "updateVerizonProvider Restricted user, not setting location mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 271
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 272
    const-string/jumbo v3, "gps"

    .line 271
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 273
    .local v0, "isGpsEnabled":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_SupportHuxGpsEnableVzwLbsStack"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vzw_lbs"

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 276
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.nim.vznavigator.app2app"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "vzwGpsIntent":Landroid/content/Intent;
    const-string/jumbo v3, "context"

    if-eqz v0, :cond_3

    .line 278
    const-string/jumbo v2, "vznavigator:app2app?version=2.0&credential=0211&commands=A"

    .line 277
    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 263
    .end local v0    # "isGpsEnabled":Z
    .end local v1    # "vzwGpsIntent":Landroid/content/Intent;
    :cond_2
    return-void

    .line 278
    .restart local v0    # "isGpsEnabled":Z
    .restart local v1    # "vzwGpsIntent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v2, "vznavigator:app2app?version=2.0&credential=0211&commands=D"

    goto :goto_0
.end method
