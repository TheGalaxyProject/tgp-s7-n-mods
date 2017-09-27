.class public Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;
.super Landroid/os/AsyncTask;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconDownloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Handler;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mDeviceId:Ljava/lang/String;

.field mRetBitmap:Landroid/graphics/Bitmap;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 2474
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2475
    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;

    .line 2476
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mDeviceId:Ljava/lang/String;

    .line 2474
    return-void
.end method


# virtual methods
.method protected varargs declared-synchronized doInBackground([Landroid/os/Handler;)Ljava/lang/Object;
    .locals 10
    .param p1, "handler"    # [Landroid/os/Handler;

    .prologue
    const/4 v9, 0x0

    monitor-enter p0

    .line 2481
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_0

    monitor-exit p0

    .line 2482
    return-object v9

    .line 2484
    :cond_0
    const/4 v2, 0x0

    .line 2486
    .local v2, "httpUrlConnection":Ljava/net/HttpURLConnection;
    :try_start_1
    new-instance v4, Ljava/net/URL;

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2487
    .local v4, "mUrl":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 2488
    .local v2, "httpUrlConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 2489
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 2491
    .local v5, "statusCode":I
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1

    .line 2492
    const-string/jumbo v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " while retrieving bitmap"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 2493
    return-object v9

    .line 2496
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 2497
    .local v3, "inputStream":Ljava/io/InputStream;
    if-nez v3, :cond_2

    .line 2498
    const-string/jumbo v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " while retrieving entity"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 2499
    return-object v9

    .line 2503
    :cond_2
    :try_start_3
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mRetBitmap:Landroid/graphics/Bitmap;

    .line 2504
    sget-object v6, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mRetBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2506
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 2508
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v2    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "mUrl":Ljava/net/URL;
    .end local v5    # "statusCode":I
    :goto_0
    monitor-exit p0

    .line 2515
    return-object v9

    .line 2505
    .restart local v2    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "mUrl":Ljava/net/URL;
    .restart local v5    # "statusCode":I
    :catchall_0
    move-exception v6

    .line 2506
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 2508
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2505
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2510
    .end local v2    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "mUrl":Ljava/net/URL;
    .end local v5    # "statusCode":I
    :catch_0
    move-exception v1

    .line 2511
    .local v1, "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 2512
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2513
    :cond_3
    const-string/jumbo v6, "WifiDisplaySettings"

    const-string/jumbo v7, "Error while retrieving bitmap"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "handler"    # [Ljava/lang/Object;

    .prologue
    .line 2480
    check-cast p1, [Landroid/os/Handler;

    .end local p1    # "handler":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->doInBackground([Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized onPostExecute(Ljava/lang/Object;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 2523
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2524
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    monitor-exit p0

    .line 2525
    return-void

    .line 2527
    :cond_0
    :try_start_1
    const-string/jumbo v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onPostExecute : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mRetBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    .line 2529
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 2530
    .local v5, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 2531
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 2533
    .local v4, "pref":Landroid/preference/Preference;
    instance-of v6, v4, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;

    if-eqz v6, :cond_1

    .line 2534
    move-object v0, v4

    check-cast v0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;

    move-object v1, v0

    .line 2535
    .local v1, "dlnaPref":Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mDeviceId:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->-get0(Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;)Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->-get0(Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;)Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2536
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mRetBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2537
    .local v2, "drawable_icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 2538
    invoke-virtual {v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 2539
    return-void

    .line 2530
    .end local v1    # "dlnaPref":Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;
    .end local v2    # "drawable_icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    .end local v4    # "pref":Landroid/preference/Preference;
    .end local v5    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_2
    monitor-exit p0

    .line 2522
    return-void

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "index"    # [Ljava/lang/Integer;

    .prologue
    .line 2519
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 2518
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "index"    # [Ljava/lang/Object;

    .prologue
    .line 2518
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "index":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
