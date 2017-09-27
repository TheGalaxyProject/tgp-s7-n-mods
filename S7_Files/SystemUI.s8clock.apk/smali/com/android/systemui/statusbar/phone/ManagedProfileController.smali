.class public Lcom/android/systemui/statusbar/phone/ManagedProfileController;
.super Ljava/lang/Object;
.source "ManagedProfileController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ManagedProfileController$1;,
        Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mListening:Z

.field private final mProfiles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/ManagedProfileController;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/ManagedProfileController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->reloadManagedProfiles()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCallbacks:Ljava/util/List;

    .line 135
    new-instance v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$1;-><init>(Lcom/android/systemui/statusbar/phone/ManagedProfileController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mUserManager:Landroid/os/UserManager;

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    .line 42
    return-void
.end method

.method private reloadManagedProfiles()V
    .locals 8

    .prologue
    .line 79
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v7

    .line 80
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v2, 0x1

    .line 81
    .local v2, "hadProfile":Z
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 82
    .local v5, "user":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    .line 84
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ui$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 85
    .local v3, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 87
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 79
    .end local v2    # "hadProfile":Z
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    .end local v4    # "ui$iterator":Ljava/util/Iterator;
    .end local v5    # "user":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 80
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "hadProfile":Z
    goto :goto_0

    .line 90
    .restart local v4    # "ui$iterator":Ljava/util/Iterator;
    .restart local v5    # "user":I
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-nez v6, :cond_3

    if-eqz v2, :cond_3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCurrentUser:I

    if-ne v5, v6, :cond_3

    .line 91
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCallbacks:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .line 92
    .local v0, "callback":Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileRemoved()V

    goto :goto_2

    .line 95
    .end local v0    # "callback":Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_3
    iput v5, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCurrentUser:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 78
    return-void
.end method

.method private setListening(Z)V
    .locals 6
    .param p1, "listening"    # Z

    .prologue
    const/4 v4, 0x0

    .line 119
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mListening:Z

    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->reloadManagedProfiles()V

    .line 123
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 118
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .prologue
    const/4 v1, 0x1

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 51
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->setListening(Z)V

    .line 53
    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileChanged()V

    .line 48
    return-void
.end method

.method public hasActiveProfile()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mListening:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->reloadManagedProfiles()V

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1

    return v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isWorkModeEnabled()Z
    .locals 4

    .prologue
    .line 107
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mListening:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->reloadManagedProfiles()V

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v3

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ui$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 110
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    const/4 v2, 0x0

    monitor-exit v3

    return v2

    .line 114
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 108
    .end local v1    # "ui$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->setListening(Z)V

    .line 56
    :cond_0
    return-void
.end method

.method public setWorkModeEnabled(Z)V
    .locals 7
    .param p1, "enableWorkMode"    # Z

    .prologue
    .line 63
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v4

    .line 64
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ui$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 65
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_1

    .line 66
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mUserManager:Landroid/os/UserManager;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/os/UserManager;->trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mContext:Landroid/content/Context;

    .line 68
    const-string/jumbo v5, "statusbar"

    .line 67
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 69
    .local v0, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 63
    .end local v0    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "ui$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 72
    .restart local v1    # "ui":Landroid/content/pm/UserInfo;
    .restart local v2    # "ui$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mUserManager:Landroid/os/UserManager;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/os/UserManager;->setQuietModeEnabled(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    monitor-exit v4

    .line 62
    return-void
.end method
