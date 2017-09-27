.class public Lcom/android/systemui/tuner/NightModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "NightModeTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NightModeController$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/NightModeController$Listener;"
    }
.end annotation


# instance fields
.field private final mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeTile;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/tuner/TunerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const-string/jumbo v1, "show_night_mode"

    const/4 v2, 0x1

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0x10b

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/tuner/NightModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0537

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeTile;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    iget-object v0, p0, Lcom/android/systemui/tuner/NightModeTile;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NightModeController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NightModeController;->setNightMode(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NightModeTile;->refreshState()V

    .line 73
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v2, 0x7f0f0537

    .line 86
    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeTile;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NightModeController;->isEnabled()Z

    move-result v0

    .line 87
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    const v1, 0x7f020195

    :goto_0
    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 89
    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 90
    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 84
    return-void

    .line 88
    :cond_0
    const v1, 0x7f020196

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "QsNightAdded"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/systemui/tuner/NightModeTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 47
    :cond_0
    return v0
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-object v0
.end method

.method public onNightModeChanged()V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NightModeTile;->refreshState()V

    .line 94
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/systemui/tuner/NightModeTile;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NightModeController;->addListener(Lcom/android/systemui/statusbar/policy/NightModeController$Listener;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NightModeTile;->refreshState()V

    .line 52
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tuner/NightModeTile;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NightModeController;->removeListener(Lcom/android/systemui/statusbar/policy/NightModeController$Listener;)V

    goto :goto_0
.end method
