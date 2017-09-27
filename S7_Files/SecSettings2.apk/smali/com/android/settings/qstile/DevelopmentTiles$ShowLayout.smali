.class public Lcom/android/settings/qstile/DevelopmentTiles$ShowLayout;
.super Landroid/service/quicksettings/TileService;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowLayout"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 66
    const-string/jumbo v1, "debug.layout"

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTiles$ShowLayout;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "true"

    .line 66
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTiles$ShowLayout;->refresh()V

    .line 65
    return-void

    .line 67
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public onStartListening()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTiles$ShowLayout;->refresh()V

    .line 53
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 59
    const-string/jumbo v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 60
    .local v0, "enabled":Z
    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTiles$ShowLayout;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTiles$ShowLayout;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 58
    return-void

    .line 60
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
