.class public Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;
.super Ljava/lang/Object;
.source "WifiDevicePolicyManager.java"


# static fields
.field private static sPropertyValue3lm:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->sPropertyValue3lm:I

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 60
    if-nez p1, :cond_0

    .line 61
    return v10

    .line 65
    :cond_0
    const-string/jumbo v11, "device_policy"

    .line 64
    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 69
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 70
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v11, "android.software.device_admin"

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-nez v3, :cond_1

    .line 71
    return v9

    .line 74
    :cond_1
    const/4 v5, 0x0

    .line 75
    .local v5, "isConfigEligibleForLockdown":Z
    if-eqz v3, :cond_2

    .line 76
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 77
    .local v0, "deviceOwner":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v2

    .line 80
    .local v2, "deviceOwnerUserId":I
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, "deviceOwnerUid":I
    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v11, :cond_3

    const/4 v5, 0x1

    .line 88
    .end local v0    # "deviceOwner":Landroid/content/ComponentName;
    .end local v1    # "deviceOwnerUid":I
    .end local v2    # "deviceOwnerUserId":I
    :cond_2
    :goto_0
    if-nez v5, :cond_4

    .line 89
    return v10

    .line 82
    .restart local v0    # "deviceOwner":Landroid/content/ComponentName;
    .restart local v1    # "deviceOwnerUid":I
    .restart local v2    # "deviceOwnerUserId":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 92
    .end local v0    # "deviceOwner":Landroid/content/ComponentName;
    .end local v1    # "deviceOwnerUid":I
    .end local v2    # "deviceOwnerUserId":I
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 94
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v11, "wifi_device_owner_configs_lockdown"

    .line 93
    invoke-static {v8, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_5

    move v6, v10

    .line 95
    .local v6, "isLockdownFeatureEnabled":Z
    :goto_1
    if-eqz v6, :cond_6

    :goto_2
    return v9

    .end local v6    # "isLockdownFeatureEnabled":Z
    :cond_5
    move v6, v9

    .line 93
    goto :goto_1

    .restart local v6    # "isLockdownFeatureEnabled":Z
    :cond_6
    move v9, v10

    .line 95
    goto :goto_2

    .line 83
    .end local v6    # "isLockdownFeatureEnabled":Z
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    .restart local v0    # "deviceOwner":Landroid/content/ComponentName;
    .restart local v2    # "deviceOwnerUserId":I
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private static getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "providerString"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "compareValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 198
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 199
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 201
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 202
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 206
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 203
    return v0

    .line 206
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 205
    :catchall_0
    move-exception v0

    .line 206
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    throw v0
.end method

.method public static isAllowedToChangeUserPolicy(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    .line 165
    const-string/jumbo v1, "getAllowUserPolicyChanges"

    const-string/jumbo v2, "false"

    const/4 v3, 0x0

    .line 164
    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string/jumbo v0, "WifiDevicePolicyManager"

    const-string/jumbo v1, "isAllowedToChangeUserPolicy false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    return v0

    .line 169
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    .line 141
    const-string/jumbo v1, "getPasswordHidden"

    const-string/jumbo v2, "true"

    const/4 v3, 0x0

    .line 140
    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v0, "WifiDevicePolicyManager"

    const-string/jumbo v1, "isAllowedToShowPasswordHiddenView false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x0

    return v0

    .line 145
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedToShowRetryDialog(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    .line 177
    const-string/jumbo v1, "getPromptCredentialsEnabled"

    const-string/jumbo v2, "false"

    const/4 v3, 0x0

    .line 176
    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 152
    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    .line 153
    const-string/jumbo v1, "isEnterpriseNetwork"

    const-string/jumbo v2, "true"

    .line 152
    invoke-static {p0, v0, v1, p1, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v0, "WifiDevicePolicyManager"

    const-string/jumbo v1, "isAllowedToUseEnterpriseSsid false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x0

    return v0

    .line 157
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedWifiChange3lm(Z)Z
    .locals 1
    .param p0, "forceUpdate"    # Z

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedWifiDirectEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 187
    if-eqz p0, :cond_0

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    .line 188
    const-string/jumbo v1, "isWifiDirectAllowed"

    const-string/jumbo v2, "false"

    .line 187
    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const-string/jumbo v0, "WifiDevicePolicyManager"

    const-string/jumbo v1, "isAllowedWifiDirectEnabled false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedWifiEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    .line 116
    const-string/jumbo v1, "isWifiEnabled"

    const-string/jumbo v2, "false"

    const/4 v3, 0x0

    .line 115
    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string/jumbo v0, "WifiDevicePolicyManager"

    const-string/jumbo v1, "isAllowedWifiEnabled false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedWifiStateChange(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    .line 129
    const-string/jumbo v1, "isWifiStateChangeAllowed"

    const-string/jumbo v2, "false"

    const/4 v3, 0x0

    .line 128
    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string/jumbo v0, "WifiDevicePolicyManager"

    const-string/jumbo v1, "isAllowedWifiStateChange false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSharedDeviceKeyguardOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-static {p0}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string/jumbo v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 45
    .local v0, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const/4 v1, 0x1

    return v1

    .line 49
    .end local v0    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_0
    return v2
.end method
