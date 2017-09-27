.class public Lcom/android/systemui/qs/tiles/UDSTile;
.super Lcom/android/systemui/qs/QSTile;
.source "UDSTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/UDSTile$1;,
        Lcom/android/systemui/qs/tiles/UDSTile$DataCallback;,
        Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_SHOW_UDS_ACTIVITY:Ljava/lang/String; = "com.samsung.android.sm.SHOW_UDS_ACTIVITY"

.field private static final ACTION_SHOW_UDS_EULA_DIALOG:Ljava/lang/String; = "com.samsung.android.sm.app.uds.intent.action_show_uds_eula_dialog"

.field private static final ACTION_SM_DASHBOARD:Ljava/lang/String; = "com.samsung.android.sm.ACTION_DASHBOARD"

.field private static final ACTION_UDS_CHANGED:Ljava/lang/String; = "com.samsung.android.sm.app.uds.intent.action_uds_changed"

.field private static final EXTRA_SM_DASHBOARD_PAGE:Ljava/lang/String; = "toPage"

.field private static final EXTRA_SM_DASHBOARD_PAGE_VALUE:I = 0x1

.field private static final EXTRA_UDS_NEW_STATE:Ljava/lang/String; = "isUDSEnabled"

.field private static final TAG:Ljava/lang/String; = "UDSTile"

.field private static final UDS_DB:Ljava/lang/String; = "udsState"


# instance fields
.field private mAirplaneModeEnabled:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDataCalback:Lcom/android/systemui/qs/tiles/UDSTile$DataCallback;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field private mListening:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettings:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/UDSTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/UDSTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAirplaneModeEnabled:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 6
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v5, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 64
    new-instance v1, Lcom/android/systemui/qs/tiles/UDSTile$DataCallback;

    invoke-direct {v1, p0, v5}, Lcom/android/systemui/qs/tiles/UDSTile$DataCallback;-><init>(Lcom/android/systemui/qs/tiles/UDSTile;Lcom/android/systemui/qs/tiles/UDSTile$DataCallback;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDataCalback:Lcom/android/systemui/qs/tiles/UDSTile$DataCallback;

    .line 119
    new-instance v1, Lcom/android/systemui/qs/tiles/UDSTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/UDSTile$1;-><init>(Lcom/android/systemui/qs/tiles/UDSTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 73
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 74
    new-instance v1, Lcom/android/systemui/qs/tiles/UDSTile$2;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v4, "udsState"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/UDSTile$2;-><init>(Lcom/android/systemui/qs/tiles/UDSTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mSettings:Lcom/android/systemui/qs/SystemSetting;

    .line 81
    new-instance v1, Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;

    invoke-direct {v1, p0, v5}, Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/UDSTile;Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 86
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDataCalback:Lcom/android/systemui/qs/tiles/UDSTile$DataCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method private showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Ljava/lang/CharSequence;
    .param p3, "posButton"    # I
    .param p4, "posListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negButton"    # I
    .param p6, "negListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    return-void

    .line 234
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 236
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 237
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 238
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    :cond_1
    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    .line 240
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 241
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 244
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/UDSTile$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/UDSTile$4;-><init>(Lcom/android/systemui/qs/tiles/UDSTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 249
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/UDSTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 250
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 228
    return-void
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/high16 v3, 0x10000000

    .line 181
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor;->isUDSTileBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const/4 v1, 0x0

    return-object v1

    .line 184
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 185
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    const-string/jumbo v1, "com.samsung.android.sm.SHOW_UDS_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 193
    :goto_0
    return-object v0

    .line 189
    :cond_1
    const-string/jumbo v1, "com.samsung.android.sm.ACTION_DASHBOARD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string/jumbo v1, "toPage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 264
    const/16 v0, 0x70

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 9

    .prologue
    const/high16 v3, 0x10000000

    const/4 v5, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isUDSTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    return-void

    .line 145
    :cond_1
    const-string/jumbo v1, "UDSTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UDSTile;->getMetricsCategory()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_2

    move v0, v5

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 148
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAirplaneModeEnabled:Z

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03c2

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    return-void

    .line 146
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_4

    .line 153
    const-string/jumbo v0, "UDSTile"

    const-string/jumbo v1, "send broadcast to disable UDS"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.sm.app.uds.intent.action_uds_changed"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v8, "udsIntent":Landroid/content/Intent;
    const-string/jumbo v0, "isUDSEnabled"

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    invoke-virtual {v8, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    .end local v8    # "udsIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 159
    :cond_4
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.sm.app.uds.intent.action_show_uds_eula_dialog"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    goto :goto_1

    .line 165
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f03e4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    new-instance v4, Lcom/android/systemui/qs/tiles/UDSTile$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/UDSTile$3;-><init>(Lcom/android/systemui/qs/tiles/UDSTile;)V

    .line 167
    const v3, 0x104000a

    .line 175
    const/4 v6, 0x0

    move-object v0, p0

    .line 165
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/UDSTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mDataCalback:Lcom/android/systemui/qs/tiles/UDSTile$DataCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 93
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isUDSTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAirplaneModeEnabled:Z

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03c2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 203
    return-void

    .line 205
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/UDSTile;->showDetail(Z)V

    .line 197
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 216
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mAirplaneModeEnabled:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 218
    const v0, 0x7f0203fd

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 219
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 221
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 220
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 215
    return-void

    :cond_1
    move v0, v1

    .line 216
    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 215
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/UDSTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UDSTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 114
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mListening:Z

    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile;->mSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 112
    return-void
.end method
