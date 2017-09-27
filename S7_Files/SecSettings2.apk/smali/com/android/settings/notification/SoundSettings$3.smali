.class final Lcom/android/settings/notification/SoundSettings$3;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 7
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
    .line 628
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v3, "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 630
    const-string/jumbo v5, "notification_volume"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 639
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v5, "user"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 642
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 643
    const v6, 0x1120075

    .line 642
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 645
    .local v1, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v1, :cond_0

    .line 646
    :try_start_0
    const-string/jumbo v5, "com.android.cellbroadcastreceiver"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 647
    const/4 v6, 0x2

    .line 646
    if-ne v5, v6, :cond_0

    .line 648
    const/4 v1, 0x0

    .line 654
    .end local v1    # "isCellBroadcastAppLinkEnabled":Z
    :cond_0
    :goto_1
    invoke-virtual {v4}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    .line 658
    :goto_2
    return-object v3

    .line 632
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "um":Landroid/os/UserManager;
    :cond_1
    const-string/jumbo v5, "ring_volume"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    const-string/jumbo v5, "ringtone"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    const-string/jumbo v5, "wifi_display"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    const-string/jumbo v5, "vibrate_when_ringing"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 651
    .restart local v1    # "isCellBroadcastAppLinkEnabled":Z
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v0

    .line 652
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    .local v1, "isCellBroadcastAppLinkEnabled":Z
    goto :goto_1

    .line 655
    .end local v0    # "ignored":Ljava/lang/IllegalArgumentException;
    .end local v1    # "isCellBroadcastAppLinkEnabled":Z
    :cond_2
    const-string/jumbo v5, "cell_broadcast_settings"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
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
    .line 622
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 623
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f080122

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 624
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
