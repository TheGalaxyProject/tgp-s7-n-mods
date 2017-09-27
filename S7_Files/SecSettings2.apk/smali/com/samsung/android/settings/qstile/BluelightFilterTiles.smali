.class public Lcom/samsung/android/settings/qstile/BluelightFilterTiles;
.super Landroid/service/quicksettings/TileService;
.source "BluelightFilterTiles.java"


# static fields
.field private static final BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    .line 38
    const-string/jumbo v3, "com.android.settings.Settings$BlueLightFilterSettingsActivity"

    .line 37
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method private getBlueLightFilterIsEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 94
    const-string/jumbo v3, "greyscale_mode"

    .line 93
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "high_contrast"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 98
    const-string/jumbo v3, "color_blind"

    .line 97
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 100
    .local v0, "isBlueLightFilterEnabled":Z
    :goto_0
    return v0

    .end local v0    # "isBlueLightFilterEnabled":Z
    :cond_1
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method private startBlueLightService(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.bluelightfilter"

    .line 79
    const-string/jumbo v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    .line 78
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 80
    if-eqz p1, :cond_0

    .line 81
    const-string/jumbo v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 76
    :goto_1
    return-void

    .line 83
    :cond_0
    const-string/jumbo v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 88
    :cond_1
    const-string/jumbo v1, "BluelightFilterTiles"

    const-string/jumbo v2, "startBlueLightService failed. mContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onClick()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v3

    if-ne v3, v0, :cond_0

    const/4 v1, 0x1

    .line 64
    .local v1, "status":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "blue_light_filter"

    .line 65
    const/4 v5, -0x2

    .line 64
    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->refresh()V

    .line 67
    if-lez v1, :cond_1

    .line 68
    .local v0, "isEnabled":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->startBlueLightService(Z)V

    .line 62
    return-void

    .line 63
    .end local v0    # "isEnabled":Z
    .end local v1    # "status":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "status":I
    goto :goto_0

    :cond_1
    move v0, v2

    .line 67
    goto :goto_1
.end method

.method public onStartListening()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->refresh()V

    .line 43
    return-void
.end method

.method public refresh()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 51
    const-string/jumbo v3, "blue_light_filter"

    const/4 v4, -0x2

    .line 50
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 53
    .local v1, "isBlueLightFilterOn":Z
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getBlueLightFilterIsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .line 56
    .local v0, "blueLightFilterState":I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    const v3, 0x7f0b0583

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 49
    return-void

    .line 50
    .end local v0    # "blueLightFilterState":I
    .end local v1    # "isBlueLightFilterOn":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isBlueLightFilterOn":Z
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "blueLightFilterState":I
    goto :goto_1

    .line 55
    .end local v0    # "blueLightFilterState":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "blueLightFilterState":I
    goto :goto_1
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method
