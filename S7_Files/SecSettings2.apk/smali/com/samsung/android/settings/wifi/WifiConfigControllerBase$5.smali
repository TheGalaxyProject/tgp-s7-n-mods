.class Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;
.super Landroid/os/AsyncTask;
.source "WifiConfigControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addGatewayRow(Landroid/view/ViewGroup;I)V
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

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

.field urlConnection:Ljava/net/HttpURLConnection;

.field final synthetic val$group:Landroid/view/ViewGroup;

.field final synthetic val$name:I

.field final synthetic val$webpage:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;Landroid/view/ViewGroup;ILjava/lang/StringBuilder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;
    .param p2, "val$group"    # Landroid/view/ViewGroup;
    .param p3, "val$name"    # I
    .param p4, "val$webpage"    # Ljava/lang/StringBuilder;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->val$group:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->val$name:I

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->val$webpage:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 553
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->responseCode:I

    .line 551
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "pageName"    # [Ljava/lang/String;

    .prologue
    .line 558
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 559
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    .line 560
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 561
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 562
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 563
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->responseCode:I

    .line 564
    const-string/jumbo v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Go To Webpage: HTTP Response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->responseCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->responseCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 572
    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "Go to Webpage: reach to finally"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 565
    return-object v3

    .line 569
    .end local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 570
    .local v1, "f":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v3, "WifiConfigController"

    const-string/jumbo v4, "Go to Webpage: Error opening connection"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    const-string/jumbo v3, "WifiConfigController"

    const-string/jumbo v4, "Go to Webpage: reach to finally"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 575
    .end local v1    # "f":Ljava/io/IOException;
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 566
    :catch_1
    move-exception v0

    .line 567
    .local v0, "e":Ljava/net/MalformedURLException;
    :try_start_2
    const-string/jumbo v3, "WifiConfigController"

    const-string/jumbo v4, "Go to Webpage: Error getting URL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 572
    const-string/jumbo v3, "WifiConfigController"

    const-string/jumbo v4, "Go to Webpage: reach to finally"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 571
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catchall_0
    move-exception v3

    .line 572
    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "Go to Webpage: reach to finally"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 571
    throw v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "pageName"    # [Ljava/lang/Object;

    .prologue
    .line 556
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "pageName":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const v6, 0x7f11040e

    const/4 v5, 0x0

    .line 580
    if-eqz p1, :cond_2

    .line 581
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    .line 582
    sget v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    sget v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_1

    .line 583
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->val$group:Landroid/view/ViewGroup;

    const v4, 0x7f040353

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 584
    .local v1, "row":Landroid/view/View;
    const v2, 0x7f11027d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->val$name:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 585
    new-instance v0, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->val$webpage:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 586
    .local v0, "content":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 587
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5$1;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->val$group:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 597
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    .line 579
    .end local v0    # "content":Landroid/text/SpannableString;
    .end local v1    # "row":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 600
    :cond_2
    const-string/jumbo v2, "WifiConfigController"

    const-string/jumbo v3, "Go to Webpage: HTTP response is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 579
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
