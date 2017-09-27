.class public Lcom/android/systemui/tv/pip/PipManager;
.super Ljava/lang/Object;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/pip/PipManager$1;,
        Lcom/android/systemui/tv/pip/PipManager$2;,
        Lcom/android/systemui/tv/pip/PipManager$3;,
        Lcom/android/systemui/tv/pip/PipManager$4;,
        Lcom/android/systemui/tv/pip/PipManager$5;,
        Lcom/android/systemui/tv/pip/PipManager$Listener;,
        Lcom/android/systemui/tv/pip/PipManager$MediaListener;
    }
.end annotation


# static fields
.field private static final DEBUG_FORCE_ONBOARDING:Z

.field private static sPipManager:Lcom/android/systemui/tv/pip/PipManager;

.field private static final sSettingsPackageAndClassNamePairList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClosePipRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurrentPipBounds:Landroid/graphics/Rect;

.field private mDefaultPipBounds:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mLastPackagesResourceGranted:[Ljava/lang/String;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/tv/pip/PipManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/tv/pip/PipManager$MediaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mMenuModePipBounds:Landroid/graphics/Rect;

.field private mOnboardingShown:Z

.field private mPipBounds:Landroid/graphics/Rect;

.field private mPipComponentName:Landroid/content/ComponentName;

.field private mPipMediaController:Landroid/media/session/MediaController;

.field private mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

.field private mPipTaskId:I

.field private mRecentsFocusChangedAnimationDurationMs:I

.field private mRecentsFocusedPipBounds:Landroid/graphics/Rect;

.field private mRecentsPipBounds:Landroid/graphics/Rect;

.field private final mResizePinnedStackRunnable:Ljava/lang/Runnable;

.field private mSettingsPipBounds:Landroid/graphics/Rect;

.field private mState:I

.field private mSuspendPipResizingReason:I

.field private mSystemServiceProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tv/pip/PipManager;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/tv/pip/PipManager;)Landroid/app/IActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/tv/pip/PipManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/tv/pip/PipManager;)Landroid/media/session/MediaSessionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/tv/pip/PipManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/tv/pip/PipManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipTaskId:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/tv/pip/PipManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/tv/pip/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/tv/pip/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/tv/pip/PipManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/tv/pip/PipManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipTaskId:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/tv/pip/PipManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "topActivity"    # Landroid/content/ComponentName;

    .prologue
    invoke-static {p0}, Lcom/android/systemui/tv/pip/PipManager;->isSettingsShown(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/tv/pip/PipManager;Z)V
    .locals 0
    .param p1, "removePipStack"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/pip/PipManager;->closePipInternal(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/tv/pip/PipManager;[Ljava/lang/String;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/pip/PipManager;->handleMediaResourceGranted([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/tv/pip/PipManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipManager;->launchPipOnboardingActivityIfNeeded()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/tv/pip/PipManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipManager;->showPipMenu()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/tv/pip/PipManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipManager;->showPipOverlay()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/tv/pip/PipManager;Ljava/util/List;)V
    .locals 0
    .param p1, "controllers"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/pip/PipManager;->updateMediaController(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/tv/pip/PipManager;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/pip/PipManager;->updatePipVisibility(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 63
    const-string/jumbo v0, "debug.tv.pip_force_onboarding"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 62
    sput-boolean v0, Lcom/android/systemui/tv/pip/PipManager;->DEBUG_FORCE_ONBOARDING:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/tv/pip/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    .line 76
    sget-object v0, Lcom/android/systemui/tv/pip/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    .line 77
    const-string/jumbo v2, "com.android.tv.settings"

    const/4 v3, 0x0

    .line 76
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/systemui/tv/pip/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    .line 79
    const-string/jumbo v2, "com.google.android.leanbacklauncher"

    .line 80
    const-string/jumbo v3, "com.google.android.leanbacklauncher.settings.HomeScreenSettingsActivity"

    .line 78
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaListeners:Ljava/util/List;

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipTaskId:I

    .line 152
    new-instance v0, Lcom/android/systemui/tv/pip/PipManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipManager$1;-><init>(Lcom/android/systemui/tv/pip/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mResizePinnedStackRunnable:Ljava/lang/Runnable;

    .line 158
    new-instance v0, Lcom/android/systemui/tv/pip/PipManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipManager$2;-><init>(Lcom/android/systemui/tv/pip/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    .line 165
    new-instance v0, Lcom/android/systemui/tv/pip/PipManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipManager$3;-><init>(Lcom/android/systemui/tv/pip/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    new-instance v0, Lcom/android/systemui/tv/pip/PipManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipManager$4;-><init>(Lcom/android/systemui/tv/pip/PipManager;)V

    .line 181
    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 536
    new-instance v0, Lcom/android/systemui/tv/pip/PipManager$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipManager$5;-><init>(Lcom/android/systemui/tv/pip/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    .line 189
    return-void
.end method

.method private closePipInternal(Z)V
    .locals 5
    .param p1, "removePipStack"    # Z

    .prologue
    const/4 v4, 0x0

    .line 246
    iput v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    .line 247
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipTaskId:I

    .line 248
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    .line 249
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 250
    if-eqz p1, :cond_0

    .line 252
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->removeStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-interface {v2}, Lcom/android/systemui/tv/pip/PipManager$Listener;->onPipActivityClosed()V

    .line 257
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 253
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PipManager"

    const-string/jumbo v3, "removeStack failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    invoke-direct {p0, v4}, Lcom/android/systemui/tv/pip/PipManager;->updatePipVisibility(Z)V

    .line 245
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/tv/pip/PipManager;
    .locals 1

    .prologue
    .line 687
    sget-object v0, Lcom/android/systemui/tv/pip/PipManager;->sPipManager:Lcom/android/systemui/tv/pip/PipManager;

    if-nez v0, :cond_0

    .line 688
    new-instance v0, Lcom/android/systemui/tv/pip/PipManager;

    invoke-direct {v0}, Lcom/android/systemui/tv/pip/PipManager;-><init>()V

    sput-object v0, Lcom/android/systemui/tv/pip/PipManager;->sPipManager:Lcom/android/systemui/tv/pip/PipManager;

    .line 690
    :cond_0
    sget-object v0, Lcom/android/systemui/tv/pip/PipManager;->sPipManager:Lcom/android/systemui/tv/pip/PipManager;

    return-object v0
.end method

.method private handleMediaResourceGranted([Ljava/lang/String;)V
    .locals 10
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 442
    iget v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-nez v3, :cond_1

    .line 443
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    const/4 v2, 0x0

    .line 446
    .local v2, "requestedFromLastPackages":Z
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 447
    iget-object v6, p0, Lcom/android/systemui/tv/pip/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_4

    aget-object v1, v6, v5

    .line 448
    .local v1, "packageName":Ljava/lang/String;
    array-length v8, p1

    move v3, v4

    :goto_2
    if-ge v3, v8, :cond_2

    aget-object v0, p1, v3

    .line 449
    .local v0, "newPackageName":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 450
    const/4 v2, 0x1

    .line 447
    .end local v0    # "newPackageName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    .line 448
    .restart local v0    # "newPackageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 456
    .end local v0    # "newPackageName":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_4
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    .line 457
    if-nez v2, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipManager;->closePip()V

    goto :goto_0
.end method

.method private static isSettingsShown(Landroid/content/ComponentName;)Z
    .locals 6
    .param p0, "topActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 524
    sget-object v4, Lcom/android/systemui/tv/pip/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "componentName$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 525
    .local v1, "componentName":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 526
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 527
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 528
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 529
    :cond_1
    const/4 v4, 0x1

    return v4

    .line 533
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "componentName":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method private launchPipOnboardingActivityIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 424
    sget-boolean v1, Lcom/android/systemui/tv/pip/PipManager;->DEBUG_FORCE_ONBOARDING:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mOnboardingShown:Z

    if-eqz v1, :cond_0

    .line 423
    :goto_0
    return-void

    .line 425
    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mOnboardingShown:Z

    .line 426
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "TvPictureInPictureOnboardingShown"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 428
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/tv/pip/PipOnboardingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 429
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 430
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showPipMenu()V
    .locals 4

    .prologue
    .line 382
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-virtual {v2}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->isRecentsShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    return-void

    .line 386
    :cond_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    .line 387
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 388
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-interface {v2}, Lcom/android/systemui/tv/pip/PipManager$Listener;->onShowPipMenu()V

    .line 387
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 390
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/tv/pip/PipMenuActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 392
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 380
    return-void
.end method

.method private showPipOverlay()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipOverlayActivity;->showPipOverlay(Landroid/content/Context;)V

    .line 281
    return-void
.end method

.method private updateMediaController(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    const/4 v2, 0x0

    .line 465
    .local v2, "mediaController":Landroid/media/session/MediaController;
    if-eqz p1, :cond_0

    iget v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 466
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 467
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 470
    .local v0, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 471
    move-object v2, v0

    .line 476
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v1    # "i":I
    .end local v2    # "mediaController":Landroid/media/session/MediaController;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-eq v3, v2, :cond_3

    .line 477
    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    .line 478
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 479
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/tv/pip/PipManager$MediaListener;

    invoke-interface {v3}, Lcom/android/systemui/tv/pip/PipManager$MediaListener;->onMediaControllerChanged()V

    .line 478
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 466
    .restart local v0    # "controller":Landroid/media/session/MediaController;
    .restart local v2    # "mediaController":Landroid/media/session/MediaController;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 481
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v2    # "mediaController":Landroid/media/session/MediaController;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-nez v3, :cond_4

    .line 482
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    .line 483
    const-wide/16 v6, 0xbb8

    .line 482
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 463
    .end local v1    # "i":I
    :cond_3
    :goto_2
    return-void

    .line 485
    .restart local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private updatePipVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 701
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    const-class v2, Lcom/android/systemui/statusbar/tv/TvStatusBar;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tv/TvStatusBar;

    .line 702
    .local v0, "statusBar":Lcom/android/systemui/statusbar/tv/TvStatusBar;
    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tv/TvStatusBar;->updatePipVisibility(Z)V

    .line 700
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/tv/pip/PipManager$Listener;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    return-void
.end method

.method public addMediaListener(Lcom/android/systemui/tv/pip/PipManager$MediaListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/tv/pip/PipManager$MediaListener;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    return-void
.end method

.method public closePip()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/tv/pip/PipManager;->closePipInternal(Z)V

    .line 241
    return-void
.end method

.method getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public getPipRecentsOverlayManager()Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    return-object v0
.end method

.method getPlaybackState()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    .line 503
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    if-nez v4, :cond_1

    .line 504
    :cond_0
    return v6

    .line 506
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    .line 507
    .local v3, "state":I
    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    .line 508
    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 507
    :cond_2
    const/4 v2, 0x1

    .line 514
    .local v2, "isPlaying":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    .line 515
    .local v0, "actions":J
    if-nez v2, :cond_5

    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_5

    .line 516
    const/4 v4, 0x1

    return v4

    .line 509
    .end local v0    # "actions":J
    .end local v2    # "isPlaying":Z
    :cond_3
    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 510
    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 511
    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    .line 512
    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    .line 513
    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    const/4 v2, 0x1

    .restart local v2    # "isPlaying":Z
    goto :goto_0

    .end local v2    # "isPlaying":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "isPlaying":Z
    goto :goto_0

    .line 517
    .restart local v0    # "actions":J
    :cond_5
    if-eqz v2, :cond_6

    const-wide/16 v4, 0x2

    and-long/2addr v4, v0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_6

    .line 518
    const/4 v4, 0x0

    return v4

    .line 520
    :cond_6
    return v6
.end method

.method public getRecentsFocusedPipBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsFocusedPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    iget-boolean v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mInitialized:Z

    if-eqz v2, :cond_0

    .line 196
    return-void

    .line 198
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mInitialized:Z

    .line 199
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 202
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1040070

    .line 201
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    .line 204
    const v2, 0x7f0f0231

    .line 203
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    .line 206
    const v2, 0x7f0f0232

    .line 205
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mMenuModePipBounds:Landroid/graphics/Rect;

    .line 208
    const v2, 0x7f0f0233

    .line 207
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsPipBounds:Landroid/graphics/Rect;

    .line 210
    const v2, 0x7f0f0234

    .line 209
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsFocusedPipBounds:Landroid/graphics/Rect;

    .line 212
    const v2, 0x7f0c0074

    .line 211
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsFocusChangedAnimationDurationMs:I

    .line 213
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipBounds:Landroid/graphics/Rect;

    .line 215
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    .line 216
    invoke-static {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mSystemServiceProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 217
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mSystemServiceProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    .line 218
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 219
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "TvPictureInPictureOnboardingShown"

    const/4 v4, 0x0

    .line 221
    invoke-static {v2, v3, v4}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mOnboardingShown:Z

    .line 224
    new-instance v2, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-direct {v2, p1}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    .line 226
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "media_session"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSessionManager;

    .line 225
    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 194
    return-void
.end method

.method public isPipShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 438
    iget v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method movePipToFullscreen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    iput v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    .line 269
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipTaskId:I

    .line 270
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-interface {v1}, Lcom/android/systemui/tv/pip/PipManager$Listener;->onMoveToFullscreen()V

    .line 270
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 273
    :cond_0
    iget v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 267
    return-void
.end method

.method public removeListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/tv/pip/PipManager$Listener;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method public removeMediaListener(Lcom/android/systemui/tv/pip/PipManager$MediaListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/tv/pip/PipManager$MediaListener;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 419
    return-void
.end method

.method resizePinnedStack(I)V
    .locals 10
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x4

    .line 317
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v9, 0x1

    .line 318
    .local v9, "wasRecentsShown":Z
    :goto_0
    iput p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    .line 319
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_2

    .line 320
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-interface {v0}, Lcom/android/systemui/tv/pip/PipManager$Listener;->onPipResizeAboutToStart()V

    .line 319
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 317
    .end local v8    # "i":I
    .end local v9    # "wasRecentsShown":Z
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "wasRecentsShown":Z
    goto :goto_0

    .line 322
    .restart local v8    # "i":I
    :cond_2
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    if-eqz v0, :cond_3

    .line 326
    return-void

    .line 328
    :cond_3
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 345
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 349
    :goto_2
    const/4 v6, -0x1

    .line 350
    .local v6, "animationDurationMs":I
    if-eqz v9, :cond_5

    .line 351
    :try_start_0
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-ne v0, v1, :cond_5

    .line 352
    :cond_4
    iget v6, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsFocusChangedAnimationDurationMs:I

    .line 354
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x4

    .line 355
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 354
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_3
    return-void

    .line 330
    .end local v6    # "animationDurationMs":I
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_2

    .line 333
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mMenuModePipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_2

    .line 336
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_2

    .line 339
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsPipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_2

    .line 342
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsFocusedPipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_2

    .line 356
    .restart local v6    # "animationDurationMs":I
    :catch_0
    move-exception v7

    .line 357
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "PipManager"

    const-string/jumbo v1, "resizeStack failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public resumePipResizing(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 301
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 302
    return-void

    .line 306
    :cond_0
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    .line 307
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mResizePinnedStackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    return-void
.end method

.method public showTvPictureInPictureMenu()V
    .locals 2

    .prologue
    .line 233
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 234
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 232
    :cond_0
    return-void
.end method

.method public suspendPipResizing(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 293
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    .line 290
    return-void
.end method
