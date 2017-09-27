.class public Lcom/sec/android/cover/clearcover/ClearCoverPage;
.super Landroid/widget/FrameLayout;
.source "ClearCoverPage.java"

# interfaces
.implements Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/ClearCoverPage$1;,
        Lcom/sec/android/cover/clearcover/ClearCoverPage$2;,
        Lcom/sec/android/cover/clearcover/ClearCoverPage$3;,
        Lcom/sec/android/cover/clearcover/ClearCoverPage$ExpandRunnable;,
        Lcom/sec/android/cover/clearcover/ClearCoverPage$NotificationIconClickListener;,
        Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;
    }
.end annotation


# static fields
.field private static final synthetic -com-sec-android-cover-clearcover-ClearCoverPage$PopupTypeSwitchesValues:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private WALLPAPER_COLOR_BLACK:I

.field private WALLPAPER_COLOR_BLUE:I

.field private WALLPAPER_COLOR_GOLD:I

.field private WALLPAPER_COLOR_GREEN:I

.field private WALLPAPER_COLOR_REAL_BLACK:I

.field private WALLPAPER_COLOR_SILVER:I

.field protected mBackgroundView:Landroid/view/View;

.field private mClickedNotification:Landroid/service/notification/StatusBarNotification;

.field private mClockWidget:Landroid/view/View;

.field protected mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mDualClockWidget:Landroid/view/View;

.field private mExpandNotificationDelay:I

.field private mExpandNotifications:Z

.field private mGroupSBN:Landroid/service/notification/StatusBarNotification;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

.field private mNotificationContainer:Landroid/view/ViewGroup;

.field private mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mRemoteViewContainerStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/cover/widget/RemoteViewContainerView;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/clearcover/ClearCoverPage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/clearcover/ClearCoverPage;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/clearcover/ClearCoverPage;)Lcom/sec/android/cover/widget/RemoteViewContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    return-object v0
.end method

.method private static synthetic -getcom-sec-android-cover-clearcover-ClearCoverPage$PopupTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-com-sec-android-cover-clearcover-ClearCoverPage$PopupTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-com-sec-android-cover-clearcover-ClearCoverPage$PopupTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->values()[Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->OPEN_COVER_BY_SECURITY:Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->OPEN_COVER_NOTIFICATIONS:Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->OPEN_COVER_TO_VIEW_CALL:Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->OPEN_COVER_TO_VIEW_MESSAGE:Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-com-sec-android-cover-clearcover-ClearCoverPage$PopupTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClickedNotification:Landroid/service/notification/StatusBarNotification;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sec/android/cover/clearcover/ClearCoverPage;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mExpandNotificationDelay:I

    return p1
.end method

.method static synthetic -set2(Lcom/sec/android/cover/clearcover/ClearCoverPage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mExpandNotifications:Z

    return p1
.end method

.method static synthetic -set3(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mGroupSBN:Landroid/service/notification/StatusBarNotification;

    return-object p1
.end method

.method static synthetic -set4(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setClockVisibility()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/clearcover/ClearCoverPage;Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;)V
    .locals 0
    .param p1, "type"    # Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->showCoverOpenPopup(Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->updateNotifications()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sec/android/cover/clearcover/ClearCoverPage;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 0
    .param p1, "latestRemoteView"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->updateRemoteViewContainerVisibility(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 106
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mBackgroundView:Landroid/view/View;

    .line 108
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mPendingIntent:Landroid/app/PendingIntent;

    .line 109
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClickedNotification:Landroid/service/notification/StatusBarNotification;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mExpandNotifications:Z

    .line 111
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mGroupSBN:Landroid/service/notification/StatusBarNotification;

    .line 114
    const/16 v0, 0x578

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mExpandNotificationDelay:I

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage$1;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 154
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage$2;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 682
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverPage$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage$3;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 173
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    .line 174
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    .line 175
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->initializeColors()V

    .line 176
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 171
    return-void
.end method

.method private getAppGroupNotifications([Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;
    .locals 4
    .param p1, "notifications"    # [Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/service/notification/StatusBarNotification;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getAppGroupNotifications()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 488
    .local v0, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .local v1, "sb":Landroid/service/notification/StatusBarNotification;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    .end local v1    # "sb":Landroid/service/notification/StatusBarNotification;
    :cond_0
    return-object v0
.end method

.method private getApplicatioName(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pmUser"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 732
    const-string/jumbo v0, ""

    .line 736
    .local v0, "appName":Ljava/lang/String;
    const/16 v3, 0x2200

    .line 735
    :try_start_0
    invoke-virtual {p2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 738
    .local v1, "cacheInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 743
    .end local v1    # "cacheInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v0

    .line 739
    :catch_0
    move-exception v2

    .line 740
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Name not found for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getGroupNotificationsSummaries([Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;
    .locals 6
    .param p1, "notifications"    # [Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/service/notification/StatusBarNotification;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 471
    .local v0, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    .line 472
    .local v1, "sb":Landroid/service/notification/StatusBarNotification;
    invoke-direct {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->isValidNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 473
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 471
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    :cond_1
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 477
    .end local v1    # "sb":Landroid/service/notification/StatusBarNotification;
    :cond_2
    return-object v0
.end method

.method private getNotificationIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/drawable/Icon;
    .locals 2
    .param p1, "sb"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 455
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 454
    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 458
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method private getParentIconMap([Landroid/service/notification/StatusBarNotification;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p1, "notifications"    # [Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Icon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    .local p2, "appGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 444
    .local v0, "iconsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Icon;>;"
    return-object v0
.end method

.method private gotoOpenPage()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 657
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->isShowingPopupDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 659
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendNotificationPendingIntentOpen(Landroid/app/PendingIntent;)V

    .line 660
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "CS03"

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->reportContextualSurvey(Landroid/content/Context;Ljava/lang/String;)V

    .line 661
    iput-object v6, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mPendingIntent:Landroid/app/PendingIntent;

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClickedNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_3

    .line 663
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClickedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 664
    .local v0, "noti":Landroid/app/Notification;
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendNotificationPendingIntentOpen(Landroid/app/PendingIntent;)V

    .line 665
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "CS03"

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->reportContextualSurvey(Landroid/content/Context;Ljava/lang/String;)V

    .line 666
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 667
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClickedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->cancelNotification(Ljava/lang/String;)V

    .line 669
    :cond_2
    iput-object v6, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClickedNotification:Landroid/service/notification/StatusBarNotification;

    goto :goto_0

    .line 670
    .end local v0    # "noti":Landroid/app/Notification;
    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mExpandNotifications:Z

    if-eqz v1, :cond_4

    .line 671
    iput-boolean v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mExpandNotifications:Z

    .line 672
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 673
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/cover/clearcover/ClearCoverPage$ExpandRunnable;

    invoke-direct {v2, p0, v6}, Lcom/sec/android/cover/clearcover/ClearCoverPage$ExpandRunnable;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/service/notification/StatusBarNotification;)V

    iget v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mExpandNotificationDelay:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 674
    :cond_4
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mGroupSBN:Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 676
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/cover/clearcover/ClearCoverPage$ExpandRunnable;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mGroupSBN:Landroid/service/notification/StatusBarNotification;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/cover/clearcover/ClearCoverPage$ExpandRunnable;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/service/notification/StatusBarNotification;)V

    iget v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mExpandNotificationDelay:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 677
    iput-object v6, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mGroupSBN:Landroid/service/notification/StatusBarNotification;

    goto :goto_0
.end method

.method private initializeColors()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_silver:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_SILVER:I

    .line 181
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_black:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_BLACK:I

    .line 182
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_blue:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_BLUE:I

    .line 183
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_green:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_GREEN:I

    .line 184
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_gold:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_GOLD:I

    .line 185
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_hero_color_black:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_REAL_BLACK:I

    .line 179
    return-void
.end method

.method private initializeNotifications()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 299
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "initializeNotifications()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget v3, Lcom/sec/android/sviewcover/R$id;->stub_notifications:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 301
    .local v2, "vStub":Landroid/view/ViewStub;
    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationContainer:Landroid/view/ViewGroup;

    .line 305
    :cond_0
    new-array v3, v5, [Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    iput-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    .line 306
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 307
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 308
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    .line 309
    sget v3, Lcom/sec/android/sviewcover/R$layout;->clear_cover_notification_item:I

    .line 308
    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    aput-object v3, v4, v0

    .line 310
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    aget-object v3, v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setVisibility(I)V

    .line 311
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v3

    .line 315
    new-instance v4, Lcom/sec/android/cover/clearcover/ClearCoverPage$4;

    invoke-direct {v4, p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage$4;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V

    .line 314
    invoke-virtual {v3, v4}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->setCoverNotificationListener(Lcom/sec/android/cover/monitor/CoverNotificationMonitor$CoverNotificationListener;)V

    .line 322
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->updateNotifications()V

    .line 298
    return-void
.end method

.method private isCoverOpen()Z
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlayingCurrentRemoteView()Z
    .locals 6

    .prologue
    .line 718
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 719
    const/4 v3, 0x0

    return v3

    .line 722
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getRemoteViewType()Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "currentType":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v1

    .line 725
    .local v1, "info":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIsPlaying:Z

    .line 727
    :goto_0
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPlayingCurrentRemoteView() currentType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isPlaying = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return v2

    .line 725
    :cond_1
    const/4 v2, 0x0

    .local v2, "isPlaying":Z
    goto :goto_0
.end method

.method private isValidNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 6
    .param p1, "sb"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v5, 0x0

    .line 509
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 510
    .local v2, "notiUserId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 511
    .local v0, "currentUserId":I
    if-nez v0, :cond_1

    const/16 v3, 0x96

    if-lt v2, v3, :cond_1

    .line 512
    const/16 v3, 0xa0

    if-gt v2, v3, :cond_1

    .line 513
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Showing Secure folder noti on owner user"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 519
    .local v1, "icon":Landroid/graphics/drawable/Icon;
    if-nez v1, :cond_2

    .line 520
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Skiping notification with invalid icon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return v5

    .line 514
    .end local v1    # "icon":Landroid/graphics/drawable/Icon;
    :cond_1
    if-eq v2, v0, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 515
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Skiping notification from other user"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return v5

    .line 523
    .restart local v1    # "icon":Landroid/graphics/drawable/Icon;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private requestRemoteViews()V
    .locals 3

    .prologue
    .line 707
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestRemoteViews : Requesting latest remote views to apps.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 710
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 706
    return-void
.end method

.method private setBackgroundColor()V
    .locals 5

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->isCoverOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setBackgroundColor() return : cover open"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-void

    .line 588
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mBackgroundView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 589
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setBackgroundColor() return : mBackgroundView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void

    .line 593
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v1

    .line 594
    .local v1, "currentCoverColor":I
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string/jumbo v3, "s_view_cover_skin_color"

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, "backgroundColor":I
    sget-boolean v2, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_COLORED_CLEARCOVER_BG:Z

    if-eqz v2, :cond_2

    .line 598
    packed-switch v1, :pswitch_data_0

    .line 615
    :pswitch_0
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_SILVER:I

    .line 622
    :goto_0
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBackgroundColor() currentCoverColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", backgroundColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 582
    return-void

    .line 600
    :pswitch_1
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_SILVER:I

    goto :goto_0

    .line 603
    :pswitch_2
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_BLACK:I

    goto :goto_0

    .line 606
    :pswitch_3
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_BLUE:I

    goto :goto_0

    .line 609
    :pswitch_4
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_GREEN:I

    goto :goto_0

    .line 612
    :pswitch_5
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_GOLD:I

    goto :goto_0

    .line 619
    :cond_2
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->WALLPAPER_COLOR_REAL_BLACK:I

    goto :goto_0

    .line 598
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private setClockVisibility()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 278
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string/jumbo v3, "dualclock_menu_settings"

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 279
    const/4 v3, 0x1

    .line 278
    if-ne v2, v3, :cond_1

    .line 279
    const/4 v0, 0x1

    .line 281
    .local v0, "isDualClock":Z
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v1

    .line 283
    .local v1, "isRoaming":Z
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setClockVisibility : isDualClock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isRoaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 286
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClockWidget:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :cond_0
    :goto_1
    return-void

    .line 279
    .end local v0    # "isDualClock":Z
    .end local v1    # "isRoaming":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isDualClock":Z
    goto :goto_0

    .line 291
    .restart local v1    # "isRoaming":Z
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClockWidget:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private showCoverOpenPopup(Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;)V
    .locals 4
    .param p1, "type"    # Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;

    .prologue
    .line 629
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showCoverOpenPopup() type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, "popupContentId":I
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-getcom-sec-android-cover-clearcover-ClearCoverPage$PopupTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 648
    :goto_0
    if-nez v0, :cond_0

    .line 649
    return-void

    .line 634
    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_missed_event_secured_popup:I

    goto :goto_0

    .line 637
    :pswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_for_detail_message:I

    goto :goto_0

    .line 640
    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_for_detail_call:I

    goto :goto_0

    .line 643
    :pswitch_3
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_view_notification_details:I

    goto :goto_0

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    .line 628
    return-void

    .line 632
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateNotifications()V
    .locals 21

    .prologue
    .line 326
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    .line 327
    .local v10, "notifications":[Landroid/service/notification/StatusBarNotification;
    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationContainer:Landroid/view/ViewGroup;

    if-nez v14, :cond_3

    .line 328
    :cond_0
    sget-object v15, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateNotifications(): notifications == null: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-nez v10, :cond_1

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 329
    const-string/jumbo v16, "mNotificationContainer == null: "

    .line 328
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 329
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationContainer:Landroid/view/ViewGroup;

    if-nez v14, :cond_2

    const/4 v14, 0x1

    .line 328
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 328
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 329
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 333
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v14

    const-string/jumbo v15, "lock_screen_show_notifications"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getSecureInt(Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_5

    const/4 v3, 0x1

    .line 335
    .local v3, "enableNoti":Z
    :goto_2
    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/sec/android/cover/CoverUtils;->isUsimDownloadTopActivity(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 336
    :cond_4
    sget-object v14, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "updateNotifications(): Notifications disabled on lockscreen"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationContainer:Landroid/view/ViewGroup;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 338
    return-void

    .line 333
    .end local v3    # "enableNoti":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 341
    .restart local v3    # "enableNoti":Z
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getAppGroupNotifications([Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;

    move-result-object v7

    .line 342
    .local v7, "mAppGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getGroupNotificationsSummaries([Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;

    move-result-object v8

    .line 343
    .local v8, "mGroupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getParentIconMap([Landroid/service/notification/StatusBarNotification;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    .line 344
    .local v9, "mParentIconsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Icon;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationContainer:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 345
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 346
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 347
    .local v2, "count":I
    const/4 v14, 0x0

    array-length v15, v10

    :goto_3
    if-ge v14, v15, :cond_d

    aget-object v12, v10, v14

    .line 348
    .local v12, "sb":Landroid/service/notification/StatusBarNotification;
    sget-object v16, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Processing notification: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v16

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->isLockScreenEnabledPkg(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 350
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->isValidNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 347
    :cond_7
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 353
    :cond_8
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, "groupKey":Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 355
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 356
    .local v13, "summaryKey":Ljava/lang/String;
    if-eqz v13, :cond_9

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 370
    .end local v13    # "summaryKey":Ljava/lang/String;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 371
    const/16 v16, 0x4

    move/from16 v0, v16

    if-gt v2, v0, :cond_7

    .line 375
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 376
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Icon;

    .line 380
    .local v6, "icon":Landroid/graphics/drawable/Icon;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    move-object/from16 v16, v0

    add-int/lit8 v17, v2, -0x1

    aget-object v16, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setVisibility(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    move-object/from16 v16, v0

    add-int/lit8 v17, v2, -0x1

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    move-object/from16 v16, v0

    add-int/lit8 v17, v2, -0x1

    aget-object v16, v16, v17

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/sec/android/sviewcover/R$string;->minimized_notification_talkback_description_open:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 382
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 384
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v11}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getApplicatioName(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    .line 382
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 389
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    move-object/from16 v16, v0

    add-int/lit8 v17, v2, -0x1

    aget-object v16, v16, v17

    .line 391
    new-instance v17, Lcom/sec/android/cover/clearcover/ClearCoverPage$NotificationIconClickListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/sec/android/cover/clearcover/ClearCoverPage$NotificationIconClickListener;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/service/notification/StatusBarNotification;)V

    .line 390
    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 357
    .end local v6    # "icon":Landroid/graphics/drawable/Icon;
    .restart local v13    # "summaryKey":Ljava/lang/String;
    :cond_a
    sget-object v16, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Notification for group "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " is not "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 378
    .end local v13    # "summaryKey":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getNotificationIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    .restart local v6    # "icon":Landroid/graphics/drawable/Icon;
    goto/16 :goto_5

    .line 393
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    move-object/from16 v16, v0

    add-int/lit8 v17, v2, -0x1

    aget-object v16, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 398
    .end local v4    # "groupKey":Ljava/lang/String;
    .end local v6    # "icon":Landroid/graphics/drawable/Icon;
    .end local v12    # "sb":Landroid/service/notification/StatusBarNotification;
    :cond_d
    const/4 v14, 0x4

    if-le v2, v14, :cond_f

    .line 400
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    const/4 v15, 0x3

    aget-object v14, v14, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v2, -0x3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setText(Ljava/lang/String;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    const/4 v15, 0x3

    aget-object v14, v14, v15

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setVisibility(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    const/4 v15, 0x3

    aget-object v14, v14, v15

    new-instance v15, Lcom/sec/android/cover/clearcover/ClearCoverPage$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage$5;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V

    invoke-virtual {v14, v15}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    const/4 v15, 0x3

    aget-object v14, v14, v15

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/sec/android/sviewcover/R$string;->minimized_notification_talkback_description_open_more:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 412
    invoke-virtual {v14, v15}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 325
    :cond_e
    return-void

    .line 416
    :cond_f
    move v5, v2

    .local v5, "i":I
    :goto_6
    const/4 v14, 0x4

    if-ge v5, v14, :cond_e

    .line 417
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    aget-object v14, v14, v5

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setVisibility(I)V

    .line 416
    add-int/lit8 v5, v5, 0x1

    goto :goto_6
.end method

.method private updateRemoteViewContainerVisibility(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 7
    .param p1, "latestRemoteView"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 527
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateRemoteViewContainerVisibility()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v1, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    .line 530
    .local v1, "type":Ljava/lang/String;
    iget-boolean v2, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    .line 532
    .local v2, "visibility":Z
    const/4 v0, 0x0

    .line 534
    .local v0, "container":Lcom/sec/android/cover/widget/RemoteViewContainerView;
    const-string/jumbo v3, "voice_recorder"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 535
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 540
    .end local v0    # "container":Lcom/sec/android/cover/widget/RemoteViewContainerView;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 541
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "return : container is null, type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void

    .line 536
    .restart local v0    # "container":Lcom/sec/android/cover/widget/RemoteViewContainerView;
    :cond_1
    const-string/jumbo v3, "video_controller"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .local v0, "container":Lcom/sec/android/cover/widget/RemoteViewContainerView;
    goto :goto_0

    .line 545
    .end local v0    # "container":Lcom/sec/android/cover/widget/RemoteViewContainerView;
    :cond_2
    iget-boolean v3, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIsPlaying:Z

    if-nez v3, :cond_4

    .line 546
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->isPlayingCurrentRemoteView()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 547
    sget-object v4, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "return : current remote view is playing("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 548
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getRemoteViewType()Ljava/lang/String;

    move-result-object v3

    .line 547
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 548
    const-string/jumbo v5, ")"

    .line 547
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return-void

    .line 551
    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->isCurentlyPlaying()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 552
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "return : MusicPlayer is playing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-void

    .line 557
    :cond_4
    if-eqz v2, :cond_8

    .line 558
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3, v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 559
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "return : top container and latest container are same"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void

    .line 562
    :cond_5
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 563
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 565
    :cond_6
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 566
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    invoke-virtual {v0, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 570
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v3, :cond_7

    .line 571
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v3, v5}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    .line 526
    :cond_7
    :goto_1
    return-void

    .line 574
    :cond_8
    invoke-virtual {v0, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 575
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 576
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 577
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected getPackageManagerForUser(I)Landroid/content/pm/PackageManager;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 751
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    .line 753
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_0

    .line 758
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 760
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 759
    const/4 v5, 0x4

    .line 758
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 766
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    return-object v2

    .line 761
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 239
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 237
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 263
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverEvent :  coverSwitchState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " coverType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    const-string/jumbo v2, " coverColor:"

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v2

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 268
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->gotoOpenPage()V

    .line 260
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setBackgroundColor()V

    .line 272
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->updateNotifications()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 248
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 246
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 191
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 192
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setVisibility(I)V

    .line 195
    sget v0, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClockWidget:Landroid/view/View;

    .line 196
    sget v0, Lcom/sec/android/sviewcover/R$id;->dual_clock_time_and_date:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mDualClockWidget:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClockWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mClockWidget:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mDualClockWidget:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 205
    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_sound_warning_remoteview_contatiner:I

    .line 204
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 206
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 211
    :cond_2
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_voice_recorder_remoteview_contatiner:I

    .line 210
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 212
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string/jumbo v1, "voice_recorder"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 217
    :cond_3
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_video_remoteview_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 218
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string/jumbo v1, "video_controller"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 223
    :cond_4
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_music_widget:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    .line 225
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_5

    .line 226
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->setOnPlaybackStateChangedListener(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;)V

    .line 230
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->initializeNotifications()V

    .line 232
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setClockVisibility()V

    .line 233
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->requestRemoteViews()V

    .line 190
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 805
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 806
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 804
    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 4
    .param p1, "playbackState"    # Landroid/media/session/PlaybackState;

    .prologue
    const/16 v3, 0x8

    .line 772
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 773
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 777
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    .line 778
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 779
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 780
    .local v0, "view":Lcom/sec/android/cover/widget/RemoteViewContainerView;
    if-eqz v0, :cond_1

    .line 781
    invoke-virtual {v0, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 783
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 790
    .end local v0    # "view":Lcom/sec/android/cover/widget/RemoteViewContainerView;
    :cond_2
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v1, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_0

    .line 796
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    goto :goto_0

    .line 773
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSessionDestroyed()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    .line 814
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->clear()V

    .line 811
    :cond_0
    return-void
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0
    .param p1, "backgroundView"    # Landroid/view/View;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mBackgroundView:Landroid/view/View;

    .line 257
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setBackgroundColor()V

    .line 255
    return-void
.end method
