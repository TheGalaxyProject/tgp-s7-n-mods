.class public Lcom/android/systemui/qs/SVoiceCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SVoiceCommandReceiver.java"


# instance fields
.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/android/systemui/qs/SVoiceCommandReceiver;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 43
    const-string/jumbo v0, "com.sec.voice.permission.RECEIVE"

    .line 44
    .local v0, "perm":Ljava/lang/String;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v1, "svoiceFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.sec.android.quicksetting.SVOICE_COMMAND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const/4 v2, 0x0

    invoke-virtual {p1, p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 40
    return-void
.end method

.method private getTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v3, p0, Lcom/android/systemui/qs/SVoiceCommandReceiver;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    const-string/jumbo v4, "Tile"

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/QSTileHost;->changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v3, p0, Lcom/android/systemui/qs/SVoiceCommandReceiver;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v2

    .line 89
    .local v2, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "tile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile;

    .line 90
    .local v0, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTile;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.android.systemui.qs.tiles."

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    return-object v0

    .line 95
    .end local v0    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "com.sec.android.quicksetting.SVOICE_COMMAND"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "NAME"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "exName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "STATE"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "exState":Ljava/lang/String;
    const-string/jumbo v7, "SVoiceCommandReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SVOICE command click() NAME="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", exState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/SVoiceCommandReceiver;->getTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v5

    .line 60
    .local v5, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    if-nez v5, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSTile$BooleanState;

    .line 63
    .local v4, "state":Lcom/android/systemui/qs/QSTile$BooleanState;
    iget-boolean v6, v4, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 66
    .local v6, "value":Z
    const-string/jumbo v7, "AutoRotateTile"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "RotationLockTile"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 67
    :cond_1
    iget-boolean v7, v4, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    if-eqz v7, :cond_2

    return-void

    .line 69
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/qs/SVoiceCommandReceiver;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v3

    .line 70
    .local v3, "rotateLocked":Z
    const-string/jumbo v7, "ON"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v3, :cond_5

    .line 71
    :cond_3
    const-string/jumbo v7, "OFF"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v3, :cond_5

    .line 50
    .end local v1    # "exName":Ljava/lang/String;
    .end local v2    # "exState":Ljava/lang/String;
    .end local v3    # "rotateLocked":Z
    .end local v4    # "state":Lcom/android/systemui/qs/QSTile$BooleanState;
    .end local v5    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    .end local v6    # "value":Z
    :cond_4
    :goto_0
    return-void

    .line 72
    .restart local v1    # "exName":Ljava/lang/String;
    .restart local v2    # "exState":Ljava/lang/String;
    .restart local v3    # "rotateLocked":Z
    .restart local v4    # "state":Lcom/android/systemui/qs/QSTile$BooleanState;
    .restart local v5    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    .restart local v6    # "value":Z
    :cond_5
    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->click()V

    goto :goto_0

    .line 76
    .end local v3    # "rotateLocked":Z
    :cond_6
    const-string/jumbo v7, "ON"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v6, :cond_8

    .line 77
    :cond_7
    const-string/jumbo v7, "OFF"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 76
    if-eqz v6, :cond_4

    .line 78
    :cond_8
    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->click()V

    goto :goto_0
.end method
