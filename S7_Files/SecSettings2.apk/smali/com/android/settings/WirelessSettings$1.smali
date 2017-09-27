.class final Lcom/android/settings/WirelessSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 431
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v9, "user"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 434
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v9

    if-eqz v9, :cond_9

    move v3, v4

    .line 435
    .local v3, "isSecondaryUser":Z
    :goto_0
    if-nez v3, :cond_0

    .line 436
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 437
    const v10, 0x112006c

    .line 436
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 438
    .local v4, "isWimaxEnabled":Z
    :cond_0
    if-nez v4, :cond_1

    .line 439
    const-string/jumbo v9, "wimax_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_1
    if-eqz v3, :cond_2

    .line 443
    const-string/jumbo v9, "vpn_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_2
    const-string/jumbo v9, "nfc"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 447
    check-cast v5, Landroid/nfc/NfcManager;

    .line 449
    .local v5, "manager":Landroid/nfc/NfcManager;
    if-eqz v5, :cond_3

    .line 450
    invoke-virtual {v5}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 451
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_3

    .line 452
    const-string/jumbo v9, "toggle_nfc"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    const-string/jumbo v9, "android_beam_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_3
    if-nez v3, :cond_4

    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 459
    :cond_4
    const-string/jumbo v9, "mobile_network_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    const-string/jumbo v9, "manage_mobile_plan"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 466
    const v10, 0x7f0e000e

    .line 465
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 467
    .local v2, "isMobilePlanEnabled":Z
    if-nez v2, :cond_6

    .line 468
    const-string/jumbo v9, "manage_mobile_plan"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 474
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v9, "android.hardware.type.television"

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 475
    const-string/jumbo v9, "toggle_airplane"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_7
    const-string/jumbo v9, "proxy_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    const-string/jumbo v9, "connectivity"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 482
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 484
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-nez v3, :cond_a

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 488
    :goto_1
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 489
    const-string/jumbo v9, "wifi_calling_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_8
    return-object v7

    .line 434
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "isMobilePlanEnabled":Z
    .end local v3    # "isSecondaryUser":Z
    .end local v4    # "isWimaxEnabled":Z
    .end local v5    # "manager":Landroid/nfc/NfcManager;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 485
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "isMobilePlanEnabled":Z
    .restart local v3    # "isSecondaryUser":Z
    .restart local v4    # "isWimaxEnabled":Z
    .restart local v5    # "manager":Landroid/nfc/NfcManager;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_a
    const-string/jumbo v9, "tether_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 425
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f08015a

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 426
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
