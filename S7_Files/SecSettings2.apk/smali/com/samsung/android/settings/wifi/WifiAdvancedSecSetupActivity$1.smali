.class Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiAdvancedSecSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 107
    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 106
    if-nez v4, :cond_0

    .line 108
    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 106
    if-eqz v4, :cond_2

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->-wrap1(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    const-string/jumbo v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 112
    .local v1, "state":I
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    const-string/jumbo v5, "wps_push_button"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 113
    .local v3, "wpspushpref":Landroid/preference/Preference;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    const-string/jumbo v5, "wps_pin_entry"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 114
    .local v2, "wpspinpref":Landroid/preference/Preference;
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    .line 115
    if-eqz v3, :cond_3

    .line 116
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 118
    :cond_3
    if-eqz v2, :cond_1

    .line 119
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 121
    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 122
    if-eqz v3, :cond_5

    .line 123
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 125
    :cond_5
    if-eqz v2, :cond_1

    .line 126
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
