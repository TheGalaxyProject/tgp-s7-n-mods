.class public Lcom/android/settings/sfinderconnect/SFinderConnectProvider;
.super Landroid/content/ContentProvider;
.source "SFinderConnectProvider.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final QUERY_PARSER_VERSION:I

.field private static final SEARCH_PROJECTION:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xfa0

    const/4 v3, 0x1

    .line 23
    const-class v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->TAG:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 26
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SFINDER_CONFIG_QUERY_PARSER_VERSION"

    .line 25
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->QUERY_PARSER_VERSION:I

    .line 29
    const-string/jumbo v0, "content://com.android.settings.sfinderconncet"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 36
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 37
    const-string/jumbo v1, "suggest_text_1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "suggest_text_2"

    aput-object v1, v0, v3

    .line 39
    const-string/jumbo v1, "suggest_icon_1"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 40
    const-string/jumbo v1, "suggest_icon_2"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "suggest_icon_3"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "suggest_target_type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "suggest_intent_data_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "suggest_extra_flags"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "suggest_group"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "data_key_reference"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "limit"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 36
    sput-object v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->SEARCH_PROJECTION:[Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 53
    sget-object v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.settings.sfinderconncet"

    const-string/jumbo v2, "search_suggest_regex_query"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.settings.sfinderconncet"

    const-string/jumbo v2, "search_suggest_regex_query/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addNewRow(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 176
    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 177
    .local v12, "title":Ljava/lang/String;
    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 178
    .local v11, "summaryOn":Ljava/lang/String;
    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 179
    .local v5, "iconResStr":I
    const/16 v13, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "category_id":Ljava/lang/String;
    const/16 v13, 0xd

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, "key":Ljava/lang/String;
    const/16 v13, 0xc

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 182
    .local v3, "enabled":I
    const/16 v13, 0xe

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 183
    .local v9, "menu_type":I
    const/16 v13, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "menu_path":Ljava/lang/String;
    const/16 v13, 0x12

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "id":Ljava/lang/String;
    const/4 v13, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "className":Ljava/lang/String;
    const-string/jumbo v10, "com.android.settings"

    .line 188
    .local v10, "pkg":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 189
    const/16 v13, 0xa

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 192
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->mContext:Landroid/content/Context;

    const v14, 0x7f0b1109

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 197
    :goto_0
    const-string/jumbo v13, "com.google.android.gms"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 198
    const-string/jumbo v10, "com.android.settings"

    .line 199
    const v5, 0x7f02045d

    .line 201
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7, v1}, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->getTileIconColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 202
    .local v4, "iconColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v14

    .line 205
    const/4 v13, 0x4

    if-ne v9, v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "android.resource://"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, "/"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 202
    :goto_1
    invoke-virtual {v14, v13}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v13

    .line 206
    const/4 v14, 0x0

    .line 202
    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v14

    .line 207
    if-nez v4, :cond_4

    const/4 v13, 0x0

    .line 202
    :goto_2
    invoke-virtual {v14, v13}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v13

    .line 208
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 202
    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v13

    .line 210
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 202
    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 175
    return-void

    .line 195
    .end local v4    # "iconColor":I
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->mContext:Landroid/content/Context;

    const v15, 0x7f0b1109

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 205
    .restart local v4    # "iconColor":I
    :cond_3
    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_1

    .line 207
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_2
.end method

.method private getResult(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 11
    .param p1, "searchWord"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 138
    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v8, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->SEARCH_PROJECTION:[Ljava/lang/String;

    invoke-direct {v6, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 140
    .local v6, "result":Landroid/database/MatrixCursor;
    const/4 v8, 0x2

    new-array v3, v8, [Landroid/database/Cursor;

    .line 142
    .local v3, "cursors":[Landroid/database/Cursor;
    iget-object v8, p0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/settings/search/SecIndex;->searchTile(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    aput-object v8, v3, v9

    .line 143
    iget-object v8, p0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/settings/search/SecIndex;->searchSubMenu(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    aput-object v8, v3, v10

    .line 146
    aget-object v8, v3, v9

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v8

    aget-object v9, v3, v10

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    add-int v5, v8, v9

    .line 147
    .local v5, "realCount":I
    const/4 v7, 0x0

    .line 148
    .local v7, "total":I
    const/4 v1, 0x0

    .line 150
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Landroid/database/MergeCursor;

    invoke-direct {v2, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v1    # "cursor":Landroid/database/Cursor;
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 152
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "cnt":I
    :goto_0
    invoke-direct {p0, v6, v2}, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->addNewRow(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 158
    const/4 v8, -0x1

    if-eq p2, v8, :cond_2

    if-lt v0, p2, :cond_2

    .line 166
    .end local v0    # "cnt":I
    :cond_0
    if-eqz v2, :cond_4

    .line 167
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 168
    .end local v2    # "cursor":Landroid/database/Cursor;
    :goto_1
    const/4 v1, 0x0

    .line 172
    :cond_1
    :goto_2
    return-object v6

    .line 161
    .restart local v0    # "cnt":I
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 163
    .end local v0    # "cnt":I
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v4

    .line 164
    .end local v1    # "cursor":Landroid/database/Cursor;
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    if-eqz v1, :cond_1

    .line 167
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 165
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 166
    :goto_4
    if-eqz v1, :cond_3

    .line 167
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 168
    const/4 v1, 0x0

    .line 165
    :cond_3
    throw v8

    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "cursor":Landroid/database/Cursor;
    .local v1, "cursor":Landroid/database/Cursor;
    goto :goto_4

    .line 163
    .end local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    goto :goto_3

    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :cond_4
    move-object v1, v2

    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    goto :goto_2
.end method

.method private getTileIconColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "category_id"    # Ljava/lang/String;

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, "iconColor":I
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    iget-object v1, p0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/android/settings/Utils;->getTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "google_settings"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/android/settings/Utils;->getOutsideTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0107

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->mContext:Landroid/content/Context;

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v3, Landroid/net/UrlQuerySanitizer;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/net/UrlQuerySanitizer;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, "sanitizer":Landroid/net/UrlQuerySanitizer;
    const-string/jumbo v6, "limit"

    invoke-virtual {v3, v6}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "limit":Ljava/lang/String;
    sget-object v6, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "limit : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-nez p4, :cond_2

    .line 91
    sget-object v6, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "findo all search"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-eqz v1, :cond_0

    const-string/jumbo v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 93
    :cond_0
    const-string/jumbo v6, ""

    const/4 v7, -0x1

    invoke-direct {p0, v6, v7}, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->getResult(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v6

    return-object v6

    .line 95
    :cond_1
    const-string/jumbo v6, ""

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->getResult(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v6

    return-object v6

    .line 98
    :cond_2
    const/4 v6, 0x0

    aget-object v4, p4, v6

    .line 99
    .local v4, "searchWord":Ljava/lang/String;
    sget v6, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->QUERY_PARSER_VERSION:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 100
    const-string/jumbo v6, "["

    const-string/jumbo v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 101
    const-string/jumbo v6, "]"

    const-string/jumbo v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 113
    :cond_3
    sget-object v6, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "searchWord : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "result":Landroid/database/Cursor;
    sget-object v6, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 126
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown query URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 103
    .end local v2    # "result":Landroid/database/Cursor;
    :cond_4
    const-string/jumbo v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "words":[Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_3

    .line 106
    add-int/lit8 v6, v0, 0x1

    rem-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v0

    const-string/jumbo v8, "&"

    const-string/jumbo v9, "aaaaa"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 117
    .end local v0    # "i":I
    .end local v5    # "words":[Ljava/lang/String;
    .restart local v2    # "result":Landroid/database/Cursor;
    :pswitch_0
    sget-object v6, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "findo serach suggest"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz v1, :cond_6

    const-string/jumbo v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 119
    :cond_6
    const/4 v6, -0x1

    invoke-direct {p0, v4, v6}, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->getResult(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    .line 129
    .local v2, "result":Landroid/database/Cursor;
    :goto_2
    if-eqz v2, :cond_8

    .line 130
    sget-object v6, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_3
    return-object v2

    .line 121
    .local v2, "result":Landroid/database/Cursor;
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v4, v6}, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->getResult(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    .local v2, "result":Landroid/database/Cursor;
    goto :goto_2

    .line 132
    :cond_8
    sget-object v6, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "result is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0xfa0
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method
