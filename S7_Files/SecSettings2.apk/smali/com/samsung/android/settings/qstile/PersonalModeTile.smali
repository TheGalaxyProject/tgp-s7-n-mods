.class public Lcom/samsung/android/settings/qstile/PersonalModeTile;
.super Landroid/service/quicksettings/TileService;
.source "PersonalModeTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/qstile/PersonalModeTile$1;
    }
.end annotation


# static fields
.field private static final PRIVATEMODE_SETTINGS:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/qstile/PersonalModeTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-class v0, Lcom/samsung/android/settings/qstile/PersonalModeTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.Settings$PersonalPageSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->PRIVATEMODE_SETTINGS:Landroid/content/Intent;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    .line 49
    new-instance v0, Lcom/samsung/android/settings/qstile/PersonalModeTile$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile$1;-><init>(Lcom/samsung/android/settings/qstile/PersonalModeTile;)V

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    return-void
.end method

.method private hasAfwsProfile()Z
    .locals 8

    .prologue
    .line 148
    iget-object v6, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 150
    .local v0, "mDPM":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    .line 151
    .local v2, "result":Z
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 152
    iget-object v6, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 153
    .local v5, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 154
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 155
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 156
    const/4 v2, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "userInfo$iterator":Ljava/util/Iterator;
    .end local v5    # "userManager":Landroid/os/UserManager;
    :cond_1
    const/4 v2, 0x1

    .line 163
    :cond_2
    return v2
.end method

.method private startPersonalModeService()V
    .locals 3

    .prologue
    .line 167
    sget-object v1, Lcom/samsung/android/settings/qstile/PersonalModeTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startPersonalModeService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.personalpage.action.ACTION_SHOW_DISCLAIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.personalpage.service"

    const-string/jumbo v2, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    new-instance v1, Lcom/samsung/android/settings/qstile/PersonalModeTile$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/qstile/PersonalModeTile$2;-><init>(Lcom/samsung/android/settings/qstile/PersonalModeTile;Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->unlockAndRun(Ljava/lang/Runnable;)V

    .line 166
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->hasAfwsProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0a1b

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 94
    return-void

    .line 96
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleClick  isM2PActivating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0a12

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->refresh()V

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->startPersonalModeService()V

    .line 91
    return-void
.end method

.method public onStartListening()V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 65
    sget-object v1, Lcom/samsung/android/settings/qstile/PersonalModeTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onStartListening Private mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->refresh()V

    .line 63
    return-void
.end method

.method public onStopListening()V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopListening Private mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 75
    return-void
.end method

.method public refresh()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 82
    const-string/jumbo v2, "personal_mode_enabled"

    const/4 v3, -0x2

    .line 81
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 84
    .local v0, "isPrivateModeOn":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    const v2, 0x7f0203ab

    invoke-static {p0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    const v2, 0x7f0b09fc

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 80
    return-void

    .line 81
    .end local v0    # "isPrivateModeOn":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isPrivateModeOn":Z
    goto :goto_0

    .line 86
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    .line 139
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04022b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 142
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "qs_detail_content_secondary_text_color"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/high16 v4, -0x1000000

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 141
    const v2, 0x7f11059f

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 144
    return-object v0
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f0b09fb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->PRIVATEMODE_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "personal_mode_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public semIsToggleButtonExists()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->hasAfwsProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0a1b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 125
    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0a12

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    return-void

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->startPersonalModeService()V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->semUpdateDetailView()V

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->refresh()V

    .line 122
    return-void
.end method
