.class public Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;
.super Ljava/lang/Object;
.source "DeviceVisibilityUtils.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFALUT_PROJECTION:[Ljava/lang/String;

.field private static mIsServeyModeOn:I

.field public static mIsSettingsProvider:Z

.field public static misAppInstalled:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 35
    sput v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->misAppInstalled:I

    .line 42
    sput v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->mIsServeyModeOn:I

    .line 51
    sput-boolean v2, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->mIsSettingsProvider:Z

    .line 54
    const-string/jumbo v0, "content://com.samsung.android.oneconnect.external/exsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 62
    const-string/jumbo v1, "settings_key"

    aput-object v1, v0, v2

    const-string/jumbo v1, "settings_value"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 61
    sput-object v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->DEFALUT_PROJECTION:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAirPlaneModeStatus(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 164
    const-string/jumbo v0, "DeviceVisibilityUtils"

    const-string/jumbo v1, "Context is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, -0x1

    return v0

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 169
    const-string/jumbo v1, "airplane_mode_on"

    const/4 v2, 0x0

    .line 168
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDBInt(Landroid/content/ContentResolver;)I
    .locals 11
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 99
    if-nez p0, :cond_0

    .line 100
    const-string/jumbo v0, "DeviceVisibilityUtils"

    const-string/jumbo v1, "Context is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, -0x1

    return v0

    .line 104
    :cond_0
    const/4 v9, 0x0

    .line 105
    .local v9, "value":I
    sget-boolean v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->mIsSettingsProvider:Z

    if-eqz v0, :cond_2

    .line 106
    const-string/jumbo v0, "device_visibility_enabled"

    invoke-static {p0, v0, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 128
    :cond_1
    :goto_0
    return v9

    .line 108
    :cond_2
    sget-object v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->DEFALUT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "settings_key=?"

    .line 109
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "device_visibility_enabled"

    aput-object v0, v4, v10

    move-object v0, p0

    .line 108
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 112
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    const-string/jumbo v0, "settings_value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 124
    :goto_1
    if-eqz v6, :cond_1

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 115
    :cond_3
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v7, "cv":Landroid/content/ContentValues;
    const-string/jumbo v0, "settings_key"

    const-string/jumbo v1, "device_visibility_enabled"

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v0, "settings_value"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    :try_start_0
    sget-object v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 120
    :catch_0
    move-exception v8

    .line 121
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "DeviceVisibilityUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can\'t insert - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static hasPermissions(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 174
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    const-string/jumbo v4, "com.samsung.android.oneconnect"

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 175
    .local v0, "permValue":I
    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->isServeyModeOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    return-void

    .line 199
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 200
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.oneconnect"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "DVFM"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-eqz p1, :cond_1

    .line 203
    const-string/jumbo v2, "extra"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 207
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method public static isQcFirstLaunched(Landroid/content/Context;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 134
    const-string/jumbo v1, "DeviceVisibilityUtils"

    const-string/jumbo v2, "Context is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v11

    .line 137
    :cond_0
    const/4 v9, 0x1

    .line 138
    .local v9, "value":I
    sget-boolean v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->mIsSettingsProvider:Z

    if-nez v1, :cond_1

    .line 139
    sget-object v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->DEFALUT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "settings_key=?"

    .line 140
    new-array v4, v10, [Ljava/lang/String;

    .line 141
    const-string/jumbo v12, "first_launch_enabled"

    aput-object v12, v4, v11

    .line 139
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 143
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    const-string/jumbo v1, "settings_value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 155
    :goto_0
    if-eqz v6, :cond_1

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 159
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    if-ne v9, v10, :cond_3

    move v1, v10

    :goto_1
    return v1

    .line 146
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 147
    .local v7, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "settings_key"

    const-string/jumbo v2, "first_launch_enabled"

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v1, "settings_value"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v8

    .line 152
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "DeviceVisibilityUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t insert - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    move v1, v11

    .line 159
    goto :goto_1
.end method

.method private static isServeyModeOn()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 180
    sget v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->mIsServeyModeOn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 181
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 182
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 181
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    sput v2, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->mIsServeyModeOn:I

    .line 188
    :cond_0
    :goto_0
    sget v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->mIsServeyModeOn:I

    if-ne v0, v2, :cond_2

    .line 189
    return v2

    .line 185
    :cond_1
    sput v3, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->mIsServeyModeOn:I

    goto :goto_0

    .line 191
    :cond_2
    return v3
.end method

.method public static setDBInt(Landroid/content/Context;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const-string/jumbo v4, "DeviceVisibilityUtils"

    const-string/jumbo v5, "Context is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-boolean v4, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->mIsSettingsProvider:Z

    if-eqz v4, :cond_2

    .line 74
    invoke-static {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v4

    if-eq v4, p1, :cond_1

    .line 75
    const-string/jumbo v4, "device_visibility_enabled"

    invoke-static {v0, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.oneconnect.DEVICE_VISIBILITY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v3, "it":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    .end local v3    # "it":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v4

    if-eq v4, p1, :cond_1

    .line 81
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "settings_key"

    const-string/jumbo v5, "device_visibility_enabled"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v4, "settings_value"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    :try_start_0
    sget-object v4, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "settings_key=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 86
    const-string/jumbo v7, "device_visibility_enabled"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 85
    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.oneconnect.DEVICE_VISIBILITY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v3    # "it":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v3    # "it":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "DeviceVisibilityUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "can\'t update - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
