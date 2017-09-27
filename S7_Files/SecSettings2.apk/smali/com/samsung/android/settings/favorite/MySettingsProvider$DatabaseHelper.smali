.class Lcom/samsung/android/settings/favorite/MySettingsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MySettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/favorite/MySettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private saved_cnt:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const-string/jumbo v0, "mysettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/favorite/MySettingsProvider$DatabaseHelper;->saved_cnt:I

    .line 110
    iput-object p1, p0, Lcom/samsung/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method private initFavorDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v8, 0x0

    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "defaultQuickSettingsMenuIdList":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 190
    .local v4, "insertFavoriteDB":[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Setting_ConfigTypeHelp"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 191
    const-string/jumbo v2, "notification_settings:device_section;display_settings:device_section;theme_settings:personal_section;security_settings:personal_section;battery_settings:system_section;wallpaper_settings:personal_section"

    .line 203
    .local v2, "default_quick_settings_menu":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Setting_ConfigQuickSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "defaultQuickSettingsMenuId":Ljava/lang/String;
    const-string/jumbo v6, ""

    if-ne v0, v6, :cond_2

    .line 206
    move-object v0, v2

    .line 211
    :cond_0
    const-string/jumbo v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "defaultQuickSettingsMenuIdList":[Ljava/lang/String;
    const/4 v3, 0x0

    .end local v4    # "insertFavoriteDB":[Ljava/lang/String;
    .local v3, "i":I
    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_3

    .line 214
    aget-object v6, v1, v3

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "insertFavoriteDB":[Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v5, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "key"

    aget-object v7, v4, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string/jumbo v6, "categoryid"

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string/jumbo v6, "ranking"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const-string/jumbo v6, "favorite"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    .end local v0    # "defaultQuickSettingsMenuId":Ljava/lang/String;
    .end local v2    # "default_quick_settings_menu":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "values":Landroid/content/ContentValues;
    .local v1, "defaultQuickSettingsMenuIdList":[Ljava/lang/String;
    .local v4, "insertFavoriteDB":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "notification_settings:device_section;display_settings:device_section;theme_settings:personal_section;security_settings:personal_section;battery_settings:system_section;online_help:system_section"

    .restart local v2    # "default_quick_settings_menu":Ljava/lang/String;
    goto :goto_0

    .line 207
    .restart local v0    # "defaultQuickSettingsMenuId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "HIDE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 208
    return-void

    .line 184
    .end local v4    # "insertFavoriteDB":[Ljava/lang/String;
    .local v1, "defaultQuickSettingsMenuIdList":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 115
    const-string/jumbo v1, "CREATE TABLE favorite (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , key STRING NOT NULL , categoryid STRING NOT NULL , ranking INTEGER)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v1, "CREATE TABLE frequent (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , key STRING NOT NULL , tile BLOB NOT NULL , count INTEGER)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "salesCode":Ljava/lang/String;
    const-string/jumbo v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/favorite/MySettingsProvider$DatabaseHelper;->initFavorDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 126
    const-string/jumbo v0, "MySettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Upgrading from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    const-string/jumbo v2, ", which will destory all old data"

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 130
    invoke-static {}, Lcom/android/settings/Utils;->isEnabledSmartManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 135
    :try_start_0
    const-string/jumbo v0, "UPDATE favorite SET key=\'application_settings_smart_manager_section\', categoryid=\'smart_manager_section\' WHERE key=\'application_settings\'"

    .line 134
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v0, "UPDATE favorite SET key=\'application_manager_settings_smart_manager_section\', categoryid=\'smart_manager_section\' WHERE key=\'application_manager_settings\'"

    .line 136
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v0, "UPDATE favorite SET key=\'launch_application_settings_smart_manager_section\', categoryid=\'smart_manager_section\' WHERE key=\'launch_application_settings\'"

    .line 138
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 146
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 160
    :try_start_1
    const-string/jumbo v0, "UPDATE favorite SET key=\'header_useful_feature\', categoryid=\'device_section\' WHERE key=\'header_motion_and_gesture\'"

    .line 159
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v0, "UPDATE favorite SET key=\'app_notifications_1depth\', categoryid=\'device_section\' WHERE key=\'app_notifications\'"

    .line 161
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 165
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 125
    :cond_2
    :goto_1
    return-void

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 141
    throw v0

    .line 147
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 150
    :try_start_2
    const-string/jumbo v0, "UPDATE favorite SET key=\'do_not_disturb_settings_1depth\', categoryid=\'device_section\' WHERE key=\'do_not_disturb_settings\'"

    .line 149
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 153
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 152
    :catchall_1
    move-exception v0

    .line 153
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 152
    throw v0

    .line 164
    :catchall_2
    move-exception v0

    .line 165
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 164
    throw v0

    .line 169
    :cond_4
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 170
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 174
    :try_start_3
    const-string/jumbo v0, "DELETE FROM favorite WHERE key=\'wallpaper_settings\'"

    .line 173
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v0, "DELETE FROM favorite WHERE key=\'theme_settings\'"

    .line 175
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 179
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 178
    :catchall_3
    move-exception v0

    .line 179
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 178
    throw v0
.end method
