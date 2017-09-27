.class public Lcom/android/server/notification/EasyMuteController;
.super Ljava/lang/Object;
.source "EasyMuteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/EasyMuteController$1;,
        Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;
    }
.end annotation


# instance fields
.field private final RINGTONE_PLAYER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field private final mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIsRegister:Z

.field private mMethodRingtonePlayer:Ljava/lang/reflect/Method;

.field private mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

.field private mMotionOn:Z

.field private mNotificationPlayerBinder:Landroid/os/IBinder;

.field private mOverTurnOn:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/notification/EasyMuteController;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/notification/EasyMuteController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/notification/EasyMuteController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/notification/EasyMuteController;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/notification/EasyMuteController;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/EasyMuteController;ZZ)V
    .locals 0
    .param p1, "isMotionOn"    # Z
    .param p2, "isOverTurnOn"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/EasyMuteController;->setEasyMuteEnabled(ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v4, "EasyMuteController"

    iput-object v4, p0, Lcom/android/server/notification/EasyMuteController;->TAG:Ljava/lang/String;

    .line 43
    const-string/jumbo v4, "android.media.IRingtonePlayer"

    iput-object v4, p0, Lcom/android/server/notification/EasyMuteController;->RINGTONE_PLAYER:Ljava/lang/String;

    .line 55
    iput-object v6, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 82
    new-instance v4, Lcom/android/server/notification/EasyMuteController$1;

    invoke-direct {v4, p0}, Lcom/android/server/notification/EasyMuteController$1;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    iput-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    .line 58
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    .line 59
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mHandler:Landroid/os/Handler;

    .line 60
    iget-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    new-instance v4, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    iget-object v5, p0, Lcom/android/server/notification/EasyMuteController;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;-><init>(Lcom/android/server/notification/EasyMuteController;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    .line 63
    iget-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    invoke-virtual {v4}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->observe()V

    .line 66
    :try_start_0
    const-string/jumbo v4, "android.media.IRingtonePlayer"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    .local v0, "classRingtonePlayer":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Class;

    .line 69
    const-class v4, Landroid/app/INotificationPlayerOnCompletionListener;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 72
    .local v3, "parameterRingtonePlayer":[Ljava/lang/Class;
    const-string/jumbo v4, "setOnCompletionListener"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 71
    iput-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0    # "classRingtonePlayer":Ljava/lang/Class;
    .end local v3    # "parameterRingtonePlayer":[Ljava/lang/Class;
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "EasyMuteController"

    const-string/jumbo v5, "NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object v6, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 73
    .end local v2    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 74
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "EasyMuteController"

    const-string/jumbo v5, "ClassNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-object v6, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method private setEasyMuteEnabled(ZZ)V
    .locals 4
    .param p1, "isMotionOn"    # Z
    .param p2, "isOverTurnOn"    # Z

    .prologue
    const/4 v3, 0x0

    .line 104
    const-string/jumbo v0, "EasyMuteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EasyMute updated 1."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " 2."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    if-eq v0, p2, :cond_4

    .line 106
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    .line 107
    iput-boolean p2, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    .line 108
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    .line 112
    const-string/jumbo v1, "motion_recognition"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 103
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string/jumbo v0, "EasyMuteController"

    const-string/jumbo v1, "setEasyMuteEnabled mEasyMuteMotionManager in not null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_2
    const-string/jumbo v0, "EasyMuteController"

    const-string/jumbo v1, "setEasyMuteEnabled setting off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    .line 121
    :cond_3
    iput-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    goto :goto_0

    .line 124
    :cond_4
    const-string/jumbo v0, "EasyMuteController"

    const-string/jumbo v1, "setEasyMuteEnabled no setting changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerListener()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->isEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v5, :cond_2

    .line 184
    :cond_0
    const-string/jumbo v5, "EasyMuteController"

    const-string/jumbo v6, "Register failed. already registered or setting not eanbled"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    iget-object v5, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v5, :cond_3

    .line 135
    iget-object v5, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iget-object v6, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    .line 137
    iput-boolean v7, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    .line 138
    const-string/jumbo v5, "EasyMuteController"

    const-string/jumbo v6, "Reg. OverTurn"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v5, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    if-nez v5, :cond_1

    .line 141
    new-array v3, v7, [Ljava/lang/Object;

    .line 142
    new-instance v5, Lcom/android/server/notification/EasyMuteController$2;

    invoke-direct {v5, p0}, Lcom/android/server/notification/EasyMuteController$2;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    aput-object v5, v3, v9

    .line 152
    .local v3, "parameter":[Ljava/lang/Object;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v4

    .line 153
    .local v4, "player":Landroid/media/IRingtonePlayer;
    iget-object v5, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    iput-object v5, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 154
    iget-object v5, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    new-instance v6, Lcom/android/server/notification/EasyMuteController$3;

    invoke-direct {v6, p0}, Lcom/android/server/notification/EasyMuteController$3;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    .line 163
    const/4 v7, 0x0

    .line 154
    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 164
    .end local v4    # "player":Landroid/media/IRingtonePlayer;
    :catch_0
    move-exception v1

    .line 165
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "EasyMuteController"

    const-string/jumbo v6, "IllegalAccessException"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput-object v8, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 167
    iget-boolean v5, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v5, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    goto :goto_0

    .line 176
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "EasyMuteController"

    const-string/jumbo v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 171
    .local v2, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v5, "EasyMuteController"

    const-string/jumbo v6, "InvocationTargetException"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-object v8, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 173
    iget-boolean v5, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v5, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    goto :goto_0

    .line 181
    .end local v2    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "parameter":[Ljava/lang/Object;
    :cond_3
    const-string/jumbo v5, "EasyMuteController"

    const-string/jumbo v6, "Register failed. mEasyMuteMotionManager is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterListener()V
    .locals 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    .line 194
    const-string/jumbo v0, "EasyMuteController"

    const-string/jumbo v1, "UnReg. OverTurn"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string/jumbo v0, "EasyMuteController"

    const-string/jumbo v1, "UnRegister failed. mEasyMuteMotionManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_1
    const-string/jumbo v0, "EasyMuteController"

    const-string/jumbo v1, "UnRegister failed. no registered"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
