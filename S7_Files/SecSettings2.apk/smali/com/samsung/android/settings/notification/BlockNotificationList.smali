.class public Lcom/samsung/android/settings/notification/BlockNotificationList;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "BlockNotificationList.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/BlockNotificationList$1;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$2;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$3;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$4;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$5;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$6;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$Row;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$SummaryProvider;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private static mSupportSimpleStatusBar:Z


# instance fields
.field private excludeKnoxApp:[Ljava/lang/String;

.field private hide_app_list:Ljava/lang/String;

.field private hide_app_notification_list:[Ljava/lang/String;

.field private mAllApps:Landroid/preference/SwitchPreference;

.field private final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mHideApp:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mNotificationApps:Landroid/preference/PreferenceCategory;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mProgress:Landroid/app/ProgressDialog;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSimpleStatusBar:Landroid/preference/SwitchPreference;

.field private mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/notification/BlockNotificationList;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->excludeKnoxApp:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/BlockNotificationList;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_notification_list:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get13()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get16()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSupportSimpleStatusBar:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mAllApps:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/NotificationBackend;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHideApp:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/pm/LauncherApps;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSupportSimpleStatusBar:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/notification/BlockNotificationList;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->checkAllAppsState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->setAllAppsOffState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/notification/BlockNotificationList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->callAdvancedAppNotifications()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/notification/BlockNotificationList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->refreshDisplayedItems()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSupportSimpleStatusBar:Z

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 110
    sput-object v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 681
    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/BlockNotificationList$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRowComparator:Ljava/util/Comparator;

    .line 725
    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/BlockNotificationList$4;-><init>()V

    .line 724
    sput-object v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 733
    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/BlockNotificationList$5;-><init>()V

    .line 732
    sput-object v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;

    .line 109
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 113
    iput-boolean v2, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHideApp:Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSections:Ljava/util/ArrayList;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    .line 117
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 118
    const-string/jumbo v1, "com.sec.knox.switchknoxI"

    aput-object v1, v0, v2

    .line 119
    const-string/jumbo v1, "com.sec.knox.switchknoxII"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 120
    const-string/jumbo v1, "com.sec.knox.containeragent2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 121
    const-string/jumbo v1, "com.sec.knox.shortcutsms"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 122
    const-string/jumbo v1, "com.sec.knox.switcher"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 117
    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->excludeKnoxApp:[Ljava/lang/String;

    .line 309
    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$1;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    .line 411
    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$2;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    .line 781
    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$6;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 92
    return-void
.end method

.method public static applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;>;"
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v6, "BlockNotificationList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " preference activities"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 599
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, " ;_;"

    .line 598
    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ri$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 601
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 602
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 603
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    .line 604
    .local v4, "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    if-nez v4, :cond_1

    .line 605
    const-string/jumbo v5, "BlockNotificationList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 606
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 605
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 606
    const-string/jumbo v7, ") for unknown package "

    .line 605
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 607
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 605
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 599
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3    # "ri$iterator":Ljava/util/Iterator;
    .end local v4    # "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :cond_0
    const-string/jumbo v5, ""

    goto :goto_0

    .line 610
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "ri$iterator":Ljava/util/Iterator;
    .restart local v4    # "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :cond_1
    iget-object v5, v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    .line 611
    const-string/jumbo v5, "BlockNotificationList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 612
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 611
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 612
    const-string/jumbo v7, ") for package "

    .line 611
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 613
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 611
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 616
    :cond_2
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/samsung/android/settings/notification/BlockNotificationList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 617
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 616
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->settingsIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 597
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :cond_3
    return-void
.end method

.method private callAdvancedAppNotifications()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 272
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "classname"

    const-string/jumbo v3, "com.android.settings.Settings$NotificationAppListActivity"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 275
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "notificationmanager"

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b196b

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 271
    :goto_0
    return-void

    .line 278
    :cond_0
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b098d

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method private checkAllAppsState()Z
    .locals 3

    .prologue
    .line 632
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 633
    iget-object v2, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 634
    iget-object v2, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    .line 635
    .local v1, "preference":Landroid/preference/SwitchPreference;
    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 636
    const/4 v2, 0x0

    return v2

    .line 632
    .end local v1    # "preference":Landroid/preference/SwitchPreference;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private static findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 9
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v8, 0x0

    .line 690
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 691
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 692
    array-length v0, v4

    .line 693
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 694
    aget-object v3, v4, v2

    .line 695
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 697
    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 698
    :catch_0
    move-exception v1

    .line 699
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "BlockNotificationList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 704
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :cond_1
    return-object v8
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationBackend;Landroid/content/Context;)Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backend"    # Lcom/android/settings/notification/NotificationBackend;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 562
    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;-><init>()V

    .line 563
    .local v0, "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    .line 564
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    .line 566
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    invoke-virtual {p1, p0, v5, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 572
    iget-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->banned:Z

    .line 573
    iget-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getImportance(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->appImportance:I

    .line 574
    iget-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getBypassZenMode(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->appBypassDnd:Z

    .line 575
    iget-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getVisibilityOverride(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->appVisOverride:I

    .line 576
    if-eqz p3, :cond_0

    .line 577
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 578
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 577
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->lockScreenSecure:Z

    .line 583
    :cond_0
    return-object v0

    .line 567
    :catch_0
    move-exception v1

    .line 568
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "BlockNotificationList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    iget-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 306
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method public static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    const-string/jumbo v1, "BlockNotificationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 588
    sget-object v3, Lcom/samsung/android/settings/notification/BlockNotificationList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 587
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    sget-object v1, Lcom/samsung/android/settings/notification/BlockNotificationList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 591
    const/4 v2, 0x0

    .line 589
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 593
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "original"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 622
    new-instance v1, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    .line 623
    .local v1, "mIconResizer":Lcom/samsung/android/settings/IconResizer;
    const v2, 0x7f0a001a

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 626
    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 628
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 509
    const-string/jumbo v7, "BlockNotificationList"

    const-string/jumbo v9, "Refreshing apps..."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 511
    iget-object v9, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v9

    .line 512
    const/4 v6, 0x0

    .line 513
    .local v6, "section":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 514
    .local v0, "N":I
    const/4 v2, 0x1

    .line 515
    .local v2, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 516
    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 517
    const-string/jumbo v7, "BlockNotificationList"

    const-string/jumbo v8, "mSortedRows size is 0"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 518
    return-void

    .line 520
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    .local v5, "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :try_start_2
    iput-boolean v2, v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->first:Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 535
    :goto_1
    :try_start_3
    new-instance v4, Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 536
    .local v4, "pref":Landroid/preference/SwitchPreference;
    iget-object v7, v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v7, v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/notification/BlockNotificationList;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 538
    new-instance v7, Lcom/samsung/android/settings/notification/BlockNotificationList$9;

    invoke-direct {v7, p0, v5}, Lcom/samsung/android/settings/notification/BlockNotificationList$9;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;)V

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 551
    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v10, v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v11, v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {v7, v10, v11}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    :goto_2
    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 552
    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 554
    const/4 v2, 0x0

    .line 515
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 531
    .end local v4    # "pref":Landroid/preference/SwitchPreference;
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 511
    .end local v0    # "N":I
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v2    # "first":Z
    .end local v3    # "i":I
    .end local v5    # "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :catchall_0
    move-exception v7

    monitor-exit v9

    throw v7

    .line 551
    .restart local v0    # "N":I
    .restart local v2    # "first":Z
    .restart local v3    # "i":I
    .restart local v4    # "pref":Landroid/preference/SwitchPreference;
    .restart local v5    # "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :cond_1
    const/4 v7, 0x1

    goto :goto_2

    .end local v4    # "pref":Landroid/preference/SwitchPreference;
    .end local v5    # "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :cond_2
    monitor-exit v9

    .line 557
    const-string/jumbo v7, "BlockNotificationList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Refreshed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " displayed items"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void
.end method

.method private setAllAppsOffState()Z
    .locals 4

    .prologue
    .line 645
    const/4 v1, 0x1

    .line 646
    .local v1, "isAllOff":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 647
    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    .line 648
    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 649
    .local v2, "preference":Landroid/preference/SwitchPreference;
    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 650
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 651
    const/4 v1, 0x0

    .line 646
    .end local v2    # "preference":Landroid/preference/SwitchPreference;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_1
    return v1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 207
    new-instance v7, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    .line 208
    .local v7, "relativeLinkView":Lcom/samsung/android/settings/widget/RelativeLinkView;
    const/4 v4, 0x0

    .line 210
    .local v4, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 211
    .local v3, "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    const v8, 0x7f0b09bc

    iput v8, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "com.android.settings"

    const-string/jumbo v9, "com.android.settings.Settings$ZenModeDNDSettingsActivity"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iput-object v0, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 216
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 217
    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .end local v4    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 218
    .local v4, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    const v8, 0x7f0b0547

    iput v8, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 219
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 220
    .local v1, "intent2":Landroid/content/Intent;
    const-string/jumbo v8, "com.android.settings"

    const-string/jumbo v9, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string/jumbo v8, ":settings:fragment_args_key"

    const-string/jumbo v9, "key_simple_led_indicator_settings"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string/jumbo v8, "extra_from_search"

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    iput-object v1, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 226
    .end local v1    # "intent2":Landroid/content/Intent;
    .end local v4    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_0
    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 227
    .local v5, "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    const v8, 0x7f0b028f

    iput v8, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 228
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v2, "intent3":Landroid/content/Intent;
    const-string/jumbo v8, "com.android.settings"

    const-string/jumbo v9, "com.android.settings.Settings$NotificationReminderActivity"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iput-object v2, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 232
    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 233
    if-eqz v4, :cond_1

    .line 234
    invoke-virtual {v7, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 236
    :cond_1
    invoke-virtual {v7, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    .line 241
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "intent3":Landroid/content/Intent;
    .end local v3    # "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .end local v5    # "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .end local v7    # "relativeLinkView":Lcom/samsung/android/settings/widget/RelativeLinkView;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 242
    .local v6, "list":Landroid/widget/ListView;
    if-eqz v6, :cond_3

    .line 243
    invoke-virtual {v6, v10}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    .line 244
    invoke-virtual {v6, v10}, Landroid/widget/ListView;->semSetFastScrollCustomEffectEnabled(Z)V

    .line 245
    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 248
    :cond_3
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 205
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mPM:Landroid/content/pm/PackageManager;

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mInflater:Landroid/view/LayoutInflater;

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 147
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->addPreferencesFromResource(I)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b1315

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 150
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->setHasOptionsMenu(Z)V

    .line 161
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0278

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 165
    const-string/jumbo v0, "simple_status_bar"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSimpleStatusBar:Landroid/preference/SwitchPreference;

    .line 166
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_SystemUI_SupportSimpleStatusBar"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSupportSimpleStatusBar:Z

    .line 167
    sget-boolean v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSupportSimpleStatusBar:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    :cond_1
    const-string/jumbo v0, "simple_status_bar"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->removePreference(Ljava/lang/String;)V

    .line 180
    :goto_1
    const-string/jumbo v0, "notification_apps"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    .line 182
    const-string/jumbo v0, "notification_all_apps"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mAllApps:Landroid/preference/SwitchPreference;

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mAllApps:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/notification/BlockNotificationList$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$8;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 139
    return-void

    .line 152
    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHideApp:Z

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_notification_list:[Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_notification_list:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 155
    const-string/jumbo v0, "BlockNotificationList"

    const-string/jumbo v1, "Hide app notification list is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput-boolean v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHideApp:Z

    goto/16 :goto_0

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSimpleStatusBar:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/notification/BlockNotificationList$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$7;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 254
    const/4 v1, 0x2

    const v2, 0x7f0b1715

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 255
    .local v0, "item":Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 252
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 261
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 268
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 263
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->callAdvancedAppNotifications()V

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 299
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Notifications"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 297
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 284
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 285
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->loadAppsList()V

    .line 287
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "simple_status_bar"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 288
    .local v0, "isSwitchOn":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSimpleStatusBar:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSimpleStatusBar:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 283
    return-void

    .line 287
    .end local v0    # "isSwitchOn":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isSwitchOn":Z
    goto :goto_0
.end method
