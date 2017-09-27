.class public Lcom/samsung/android/settings/DCMHomeSettings;
.super Landroid/app/ListFragment;
.source "DCMHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;
    }
.end annotation


# static fields
.field public static final PRELOADED_HOME_PKGS:[Ljava/lang/String;


# instance fields
.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentHomeIndex:I

.field private mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

.field private mHasEasyLauncher:Z

.field mHomeApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mPreloadedHomeList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSelectedHomeIndex:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/DCMHomeSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/DCMHomeSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/DCMHomeSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomeIndex:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/DCMHomeSettings;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->changeHome(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/DCMHomeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->startLauncher()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 80
    const-string/jumbo v1, "com.nttdocomo.android.paletteui"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "com.nttdocomo.android.dhome"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "com.google.android.setupwizard"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "com.sec.android.app.launcher"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "com.sec.android.app.easylauncher"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "com.sec.android.app.kidslauncher"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "com.sec.android.app.SecSetupWizard"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "com.sec.android.app.longlifemodelauncher"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "com.sec.android.app.kidshome"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "com.android.settings"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 79
    sput-object v0, Lcom/samsung/android/settings/DCMHomeSettings;->PRELOADED_HOME_PKGS:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 56
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/samsung/android/settings/DCMHomeSettings;->PRELOADED_HOME_PKGS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPreloadedHomeList:Ljava/util/HashSet;

    .line 105
    iput v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    .line 106
    iput v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomeIndex:I

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    .line 56
    return-void
.end method

.method private applyDisplayDensity(Z)V
    .locals 4
    .param p1, "isEasyMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 395
    if-eqz p1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1, v3, v3}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZI)V

    .line 394
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZI)V

    goto :goto_0
.end method

.method private changeHome(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 260
    const-string/jumbo v1, "DCMHomeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeHome "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 262
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DCMHomeSettings;->setPreferredHome(Landroid/content/pm/ResolveInfo;)V

    .line 264
    packed-switch p1, :pswitch_data_0

    .line 279
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    .line 259
    :goto_0
    return-void

    .line 266
    :pswitch_0
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-direct {p0, v4, v4}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_0

    .line 272
    :pswitch_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    if-eqz v1, :cond_0

    .line 273
    invoke-direct {p0, v5, v4}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 382
    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 384
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 386
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    return-object v0

    .line 391
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    return-object v3
.end method

.method private isPreffered(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v0, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 378
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private setEasymode(ZZ)V
    .locals 8
    .param p1, "isEasyModeSet"    # Z
    .param p2, "isDCMHome"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x2

    .line 308
    const-string/jumbo v2, "DCMHomeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setEasymode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isDCMHome="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 310
    const-string/jumbo v2, "DCMHomeSettings"

    const-string/jumbo v3, "Easy mode feature is disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void

    .line 314
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    if-eqz v2, :cond_1

    .line 315
    if-eqz p1, :cond_4

    .line 316
    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    const-string/jumbo v5, "easymode"

    const-string/jumbo v6, "enable easy mode"

    invoke-virtual {v2, v5, v6, v3}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 322
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "easy_mode_switch"

    if-eqz p1, :cond_5

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    if-eqz p1, :cond_6

    .line 325
    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-virtual {v2}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->setEasyFont()V

    .line 326
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/DCMHomeSettings;->applyDisplayDensity(Z)V

    .line 335
    :cond_2
    :goto_2
    iget v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    if-eq v2, v7, :cond_7

    iget v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomeIndex:I

    if-ne v2, v7, :cond_7

    .line 337
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "intent1":Landroid/content/Intent;
    const-string/jumbo v2, "easymode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    const-string/jumbo v2, "easymode_from"

    const-string/jumbo v3, "settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    if-eqz p2, :cond_8

    .line 341
    const-string/jumbo v2, "homemode_jpn"

    const-string/jumbo v3, "docomo"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    :goto_4
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v1, "intent2":Landroid/content/Intent;
    const-string/jumbo v2, "easymode"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 348
    const-string/jumbo v2, "easymode_from"

    const-string/jumbo v3, "settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    if-eqz p2, :cond_9

    .line 350
    const-string/jumbo v2, "homemode_jpn"

    const-string/jumbo v3, "docomo"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    :goto_5
    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 356
    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 307
    .end local v0    # "intent1":Landroid/content/Intent;
    .end local v1    # "intent2":Landroid/content/Intent;
    :cond_3
    return-void

    .line 318
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    const-string/jumbo v5, "easymode"

    const-string/jumbo v6, "return standard mode not easy mode"

    invoke-virtual {v2, v5, v6, v4}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    move v2, v4

    .line 322
    goto :goto_1

    .line 328
    :cond_6
    iget-boolean v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    if-ne v2, v7, :cond_2

    .line 329
    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-virtual {v2}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->setStandardFont()V

    .line 330
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/DCMHomeSettings;->applyDisplayDensity(Z)V

    goto :goto_2

    .line 336
    :cond_7
    iget v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    if-ne v2, v7, :cond_3

    iget v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomeIndex:I

    if-eq v2, v7, :cond_3

    goto :goto_3

    .line 343
    .restart local v0    # "intent1":Landroid/content/Intent;
    :cond_8
    const-string/jumbo v2, "homemode_jpn"

    const-string/jumbo v3, "samsung"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 352
    .restart local v1    # "intent2":Landroid/content/Intent;
    :cond_9
    const-string/jumbo v2, "homemode_jpn"

    const-string/jumbo v3, "samsung"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5
.end method

.method private startLauncher()V
    .locals 4

    .prologue
    .line 361
    const-string/jumbo v1, "DCMHomeSettings"

    const-string/jumbo v2, "startLauncher"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 366
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 367
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DCMHomeSettings;->startActivity(Landroid/content/Intent;)V

    .line 370
    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.intent.action.LAUNCHER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 360
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 213
    new-instance v0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const v3, 0x7f080080

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;-><init>(Lcom/samsung/android/settings/DCMHomeSettings;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DCMHomeSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    .line 116
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 117
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    .line 118
    new-instance v5, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v5}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    .line 120
    new-instance v5, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    .line 121
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-virtual {v5}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->initFontSettings()V

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.HOME"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    const v6, 0x10040

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    .line 129
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    .line 130
    const-string/jumbo v5, "com.nttdocomo.android.dhome"

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 131
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string/jumbo v6, "com.nttdocomo.android.dhome"

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const-string/jumbo v5, "DCMHomeSettings"

    const-string/jumbo v6, "add home : com.nttdocomo.android.dhome"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    :goto_0
    const-string/jumbo v5, "com.sec.android.app.launcher"

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 138
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string/jumbo v6, "com.sec.android.app.launcher"

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const-string/jumbo v5, "DCMHomeSettings"

    const-string/jumbo v6, "add home : com.sec.android.app.launcher"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    const-string/jumbo v5, "com.sec.android.app.easylauncher"

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 142
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string/jumbo v6, "com.sec.android.app.easylauncher"

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const-string/jumbo v5, "DCMHomeSettings"

    const-string/jumbo v6, "add home : com.sec.android.app.easylauncher"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "device_provisioned"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    .line 151
    .local v3, "isSetupWizardState":Z
    :cond_2
    if-nez v3, :cond_6

    .line 152
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 153
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 154
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 155
    .local v4, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPreloadedHomeList:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 156
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 133
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "isSetupWizardState":Z
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "com.nttdocomo.android.paletteui"

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 134
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string/jumbo v6, "com.nttdocomo.android.paletteui"

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const-string/jumbo v5, "DCMHomeSettings"

    const-string/jumbo v6, "add home : com.nttdocomo.android.paletteui"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    :cond_5
    const-string/jumbo v5, "DCMHomeSettings"

    const-string/jumbo v6, "There is no easy launcher"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput-boolean v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    goto :goto_1

    .line 162
    .restart local v3    # "isSetupWizardState":Z
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_9

    .line 163
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 164
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 165
    .restart local v4    # "pkg":Ljava/lang/String;
    const-string/jumbo v5, "DCMHomeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string/jumbo v5, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 167
    const-string/jumbo v5, "com.google.android.setupwizard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 166
    if-eqz v5, :cond_8

    .line 168
    :cond_7
    const-string/jumbo v5, "DCMHomeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[Remove] pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 162
    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 173
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100107

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 112
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    const v0, 0x7f04012a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 218
    const-string/jumbo v3, "DCMHomeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onListItemClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    if-ne v3, p3, :cond_0

    .line 220
    const-string/jumbo v3, "DCMHomeSettings"

    const-string/jumbo v4, "Do not change to current home"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void

    .line 224
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100107

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100108

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 224
    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 227
    iget-object v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 228
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "label":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 243
    :cond_1
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const v5, 0x7f0b03a6

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/DCMHomeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 246
    new-instance v4, Lcom/samsung/android/settings/DCMHomeSettings$1;

    invoke-direct {v4, p0, p3}, Lcom/samsung/android/settings/DCMHomeSettings$1;-><init>(Lcom/samsung/android/settings/DCMHomeSettings;I)V

    .line 245
    const v5, 0x104000a

    .line 243
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 254
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    .line 243
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 256
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 217
    return-void

    .line 231
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :pswitch_0
    const v3, 0x7f0b03a0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/DCMHomeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 234
    :pswitch_1
    const v3, 0x7f0b03a2

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/DCMHomeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 237
    :pswitch_2
    iget-boolean v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    if-eqz v3, :cond_1

    .line 238
    const v3, 0x7f0b03a4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/DCMHomeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 182
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 185
    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 186
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_4

    .line 187
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/DCMHomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 188
    iput v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    .line 194
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    const-string/jumbo v4, "com.sec.android.app.launcher"

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/DCMHomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 195
    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "easy_mode_switch"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 196
    .local v2, "isEasyMode":Z
    :cond_1
    if-eqz v2, :cond_5

    .line 197
    iput v6, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    .line 205
    .end local v2    # "isEasyMode":Z
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->notifyDataSetChanged()V

    .line 181
    :cond_3
    return-void

    .line 184
    .restart local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "isEasyMode":Z
    :cond_5
    iput v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    goto :goto_1

    .line 201
    .end local v2    # "isEasyMode":Z
    :cond_6
    const-string/jumbo v3, "com.sec.android.app.easylauncher"

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/DCMHomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    iput v6, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    goto :goto_1
.end method

.method public setPreferredHome(Landroid/content/pm/ResolveInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 285
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 286
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string/jumbo v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 288
    const-string/jumbo v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 290
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Landroid/content/ComponentName;

    .line 291
    .local v0, "components":[Landroid/content/ComponentName;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .local v4, "target":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 294
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 295
    .local v2, "home":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v3

    .line 298
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 299
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 293
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 304
    .end local v2    # "home":Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget v6, p1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-virtual {v5, v1, v6, v0, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 284
    return-void
.end method
