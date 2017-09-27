.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;
.super Landroid/os/AsyncTask;
.source "WifiSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;->checkGoToWebPageHTTPResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field responseCode:I

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

.field urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 657
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->responseCode:I

    .line 655
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7
    .param p1, "pageName"    # [Ljava/lang/String;

    .prologue
    .line 662
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 663
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->urlConnection:Ljava/net/HttpURLConnection;

    .line 664
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 665
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->urlConnection:Ljava/net/HttpURLConnection;

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 666
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 667
    const-string/jumbo v4, "WifiSettingsBase"

    const-string/jumbo v5, "Connected successfully!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->responseCode:I

    .line 669
    const-string/jumbo v4, "WifiSettingsBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Go To Webpage: HTTP Response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->responseCode:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->responseCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 681
    const-string/jumbo v5, "WifiSettingsBase"

    const-string/jumbo v6, "Go to Webpage: reach to finally"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 670
    return-object v4

    .line 677
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 678
    .local v0, "a":Ljava/lang/AssertionError;
    :try_start_1
    const-string/jumbo v4, "WifiSettingsBase"

    const-string/jumbo v5, "Go to Webpage: Assertion Error occurs"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {v0}, Ljava/lang/AssertionError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    const-string/jumbo v4, "WifiSettingsBase"

    const-string/jumbo v5, "Go to Webpage: reach to finally"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 684
    .end local v0    # "a":Ljava/lang/AssertionError;
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 674
    :catch_1
    move-exception v2

    .line 675
    .local v2, "f":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v4, "WifiSettingsBase"

    const-string/jumbo v5, "Go to Webpage: Error opening connection"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 681
    const-string/jumbo v4, "WifiSettingsBase"

    const-string/jumbo v5, "Go to Webpage: reach to finally"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 671
    .end local v2    # "f":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 672
    .local v1, "e":Ljava/net/MalformedURLException;
    :try_start_3
    const-string/jumbo v4, "WifiSettingsBase"

    const-string/jumbo v5, "Go to Webpage: Error getting URL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 681
    const-string/jumbo v4, "WifiSettingsBase"

    const-string/jumbo v5, "Go to Webpage: reach to finally"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 680
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catchall_0
    move-exception v4

    .line 681
    const-string/jumbo v5, "WifiSettingsBase"

    const-string/jumbo v6, "Go to Webpage: reach to finally"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 680
    throw v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "pageName"    # [Ljava/lang/Object;

    .prologue
    .line 660
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "pageName":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 689
    if-eqz p1, :cond_0

    .line 690
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    .line 688
    :goto_0
    return-void

    .line 692
    :cond_0
    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "Go to Webpage: HTTP response is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 688
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
