.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 592
    if-nez p1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-get18(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    .line 594
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 595
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 596
    :cond_0
    const-string/jumbo v1, "WifiP2pSettings"

    const-string/jumbo v2, "TTS : This Language is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .end local v0    # "result":I
    :cond_1
    :goto_0
    return-void

    .line 597
    .restart local v0    # "result":I
    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 598
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 599
    :cond_3
    const-string/jumbo v1, "WifiP2pSettings"

    const-string/jumbo v2, "TTS : This Language is not downloaded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 601
    :cond_4
    const-string/jumbo v1, "WifiP2pSettings"

    const-string/jumbo v2, "TTS : Initilization Failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
