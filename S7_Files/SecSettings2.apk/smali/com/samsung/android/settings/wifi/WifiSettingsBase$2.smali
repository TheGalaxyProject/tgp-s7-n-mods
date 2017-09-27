.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;
.super Ljava/lang/Object;
.source "WifiSettingsBase.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddNetworkPressed()V
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onAddNetworkPressed()V

    .line 1235
    return-void
.end method

.method public onItemClick(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V
    .locals 6
    .param p1, "preference"    # Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    .prologue
    .line 1216
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onItemClick - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_0
    const/4 v0, 0x0

    .line 1218
    .local v0, "apPref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    instance-of v2, p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 1219
    check-cast v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 1227
    .end local v0    # "apPref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 1228
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 1215
    :goto_1
    return-void

    .line 1221
    .restart local v0    # "apPref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    .line 1222
    .local v1, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    if-eqz v1, :cond_1

    .line 1223
    new-instance v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 1224
    .end local v0    # "apPref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    const/4 v4, 0x0

    .line 1223
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    .local v0, "apPref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    goto :goto_0

    .line 1230
    .end local v0    # "apPref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .end local v1    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_3
    const-string/jumbo v2, "WifiSettingsBase"

    const-string/jumbo v3, "no matched any accesspoint"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startScan()V

    .line 1243
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->resetPeriodicScanTime()V

    .line 1240
    return-void
.end method
