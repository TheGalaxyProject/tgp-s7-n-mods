.class public Lcom/android/settings/SecSearchActivity;
.super Landroid/app/Activity;
.source "SecSearchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private callMenu(Ljava/lang/String;)V
    .locals 14
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v9, 0x0

    .line 47
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/search/SecIndex;->searchItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 49
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 50
    const-string/jumbo v0, "Index"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 58
    const/4 v0, 0x6

    .line 57
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "className":Ljava/lang/String;
    const/4 v0, 0x7

    .line 59
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "screenTitle":Ljava/lang/String;
    const/16 v0, 0x9

    .line 61
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "action":Ljava/lang/String;
    const/16 v0, 0xd

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "key":Ljava/lang/String;
    const/16 v0, 0xb

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "targetCls":Ljava/lang/String;
    const/16 v0, 0xa

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "targetPkg":Ljava/lang/String;
    const/16 v0, 0x11

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 67
    .local v8, "bundleBytes":[B
    const/4 v7, 0x0

    .line 68
    .local v7, "args":Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 69
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 70
    .local v11, "parcel":Landroid/os/Parcel;
    array-length v0, v8

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    invoke-virtual {v11}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 73
    .local v7, "args":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .end local v7    # "args":Landroid/os/Bundle;
    .end local v11    # "parcel":Landroid/os/Parcel;
    :cond_0
    move-object v0, p0

    .line 76
    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->launchBySearch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-eqz v9, :cond_1

    .line 82
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 83
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "targetPkg":Ljava/lang/String;
    .end local v3    # "targetCls":Ljava/lang/String;
    .end local v4    # "screenTitle":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "action":Ljava/lang/String;
    .end local v8    # "bundleBytes":[B
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_0
    const/4 v9, 0x0

    .line 44
    :cond_1
    return-void

    .line 53
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    const-string/jumbo v0, "Index"

    const-string/jumbo v12, "Fail to call menu by s finder because cursor is null"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    if-eqz v9, :cond_3

    .line 82
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 83
    const/4 v9, 0x0

    .line 54
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-void

    .line 78
    :catch_0
    move-exception v10

    .line 79
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    if-eqz v9, :cond_1

    .line 82
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 80
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 81
    if-eqz v9, :cond_4

    .line 82
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 83
    const/4 v9, 0x0

    .line 80
    :cond_4
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/settings/SecSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SecSearchActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/settings/SecSearchActivity;->finish()V

    .line 16
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 27
    const-string/jumbo v3, "com.samsung.settings.REQUEST_FINDO_SEARCH_CALL_SETTING_MENU"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "mintentdata":Ljava/lang/String;
    const-string/jumbo v3, "content://com.android.settings.sfinderconncet/searchinfo/rowid/"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 31
    const-string/jumbo v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rowId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-direct {p0, v1}, Lcom/android/settings/SecSearchActivity;->callMenu(Ljava/lang/String;)V

    .line 34
    .end local v1    # "mintentdata":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    const-string/jumbo v3, "query"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "query":Ljava/lang/String;
    const-string/jumbo v3, "SearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.query_by_voice"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v3, "query"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/settings/SecSearchActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    .end local v0    # "i":Landroid/content/Intent;
    .end local v2    # "query":Ljava/lang/String;
    :cond_1
    return-void
.end method
