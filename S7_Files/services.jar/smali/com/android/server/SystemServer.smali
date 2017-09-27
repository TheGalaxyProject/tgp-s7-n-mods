.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final AOD_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.aod.AODManagerService"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final COCKTAIL_BAR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cocktailbar.CocktailBarManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x103013f

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.LockSettingsService$Lifecycle"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_BLUETOOTH_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.bluetooth.WearBluetoothService"

.field private static final WIFI_HS20_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.hs20.WifiHs20Service"

.field private static final WIFI_NAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.nan.WifiNanService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final isMobilePaymentAllowed:Z = true

.field private static final isRLLAllowed:Z = false

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private final IS_ELASTIC_ENABLED:Z

.field private final IS_OVERLAY_THEMES_ENABLED:Z

.field SCEPolicy:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

.field ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

.field credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mIsAlarmBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field multiScreenManagerService:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

.field pkmService:Lcom/android/server/PKMService;

.field safeModeValueForTheme:Z

.field timaKeystoreService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

.field timaObserver:Lcom/android/server/TimaObserver;

.field timaService:Lcom/android/server/TimaService;

.field ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/SystemServer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startThemeService()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object v0, p0, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    .line 421
    iput-object v0, p0, Lcom/android/server/SystemServer;->pkmService:Lcom/android/server/PKMService;

    .line 422
    iput-object v0, p0, Lcom/android/server/SystemServer;->timaObserver:Lcom/android/server/TimaObserver;

    .line 423
    iput-object v0, p0, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 424
    iput-object v0, p0, Lcom/android/server/SystemServer;->timaKeystoreService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .line 428
    iput-object v0, p0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 429
    iput-object v0, p0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 433
    iput-object v0, p0, Lcom/android/server/SystemServer;->SCEPolicy:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->IS_ELASTIC_ENABLED:Z

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->IS_OVERLAY_THEMES_ENABLED:Z

    .line 463
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 461
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 661
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 662
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 663
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 660
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 458
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 457
    return-void
.end method

.method private performPendingShutdown()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 621
    const-string/jumbo v6, "sys.shutdown.requested"

    const-string/jumbo v7, ""

    .line 620
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 622
    .local v5, "shutdownAction":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 623
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_0

    const/4 v4, 0x1

    .line 626
    .local v4, "reboot":Z
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_1

    .line 627
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 637
    :goto_1
    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 638
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/cache/recovery/uncrypt_file"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 639
    .local v2, "packageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 640
    const/4 v1, 0x0

    .line 642
    .local v1, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v2, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 647
    .end local v1    # "filename":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_2

    const-string/jumbo v6, "/data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 648
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/cache/recovery/block.map"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 649
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void

    .line 623
    .end local v2    # "packageFile":Ljava/io/File;
    .end local v4    # "reboot":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "reboot":Z
    goto :goto_0

    .line 629
    :cond_1
    const/4 v3, 0x0

    .local v3, "reason":Ljava/lang/String;
    goto :goto_1

    .line 643
    .end local v3    # "reason":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "packageFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Error reading uncrypt package file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 656
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "packageFile":Ljava/io/File;
    :cond_2
    invoke-static {v8, v4, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 619
    .end local v4    # "reboot":Z
    :cond_3
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 615
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    return-void
.end method

.method private run()V
    .locals 12

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v10, 0x80000

    .line 468
    :try_start_0
    const-string/jumbo v0, "InitBeforeStartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 474
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 486
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 487
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 489
    .local v8, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .end local v8    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "!@Boot: Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 500
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xbc2

    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 509
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 514
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 515
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    .line 520
    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x36ee80

    .line 515
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 524
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 528
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 532
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 536
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 540
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 543
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 546
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 552
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 553
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 556
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 560
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 563
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 566
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 567
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 574
    :try_start_1
    const-string/jumbo v0, "StartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 575
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 576
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 577
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 583
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 587
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 588
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.galaxybetaservice"

    .line 594
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/16 v3, 0x80

    .line 593
    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 596
    .local v9, "mobileCareInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_4

    .line 597
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 598
    const-string/jumbo v0, "sys.mobilecare.preload"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 605
    .end local v9    # "mobileCareInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Process;->setSystemServerPid()V

    .line 609
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "!@Boot: Loop forever"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 611
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :catchall_0
    move-exception v0

    .line 569
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 568
    throw v0

    .line 578
    :catch_0
    move-exception v7

    .line 579
    .local v7, "ex":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 582
    .end local v7    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .line 583
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 582
    throw v0

    .line 601
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private startBootstrapServices()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-wide/32 v10, 0x80000

    .line 677
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 680
    .local v3, "installer":Lcom/android/server/pm/Installer;
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 681
    const-class v7, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 680
    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 682
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 683
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 690
    :try_start_0
    sget-object v4, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTISCREEN_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v7, 0x1

    .line 689
    invoke-static {v4, v7}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    .line 688
    iput-object v4, p0, Lcom/android/server/SystemServer;->multiScreenManagerService:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    .line 691
    iget-object v4, p0, Lcom/android/server/SystemServer;->multiScreenManagerService:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v4, v7, v8}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->main(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 693
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->multiScreenManagerService:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService;->setMultiScreenManager(Lcom/android/server/am/IMultiScreenManagerServiceBridge;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :goto_0
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService;

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 708
    const-string/jumbo v4, "InitPowerManagement"

    invoke-static {v10, v11, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 709
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 710
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 713
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/lights/LightsService;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 717
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayManagerService;

    iput-object v4, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 720
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x64

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 723
    const-string/jumbo v4, "vold.decrypt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v4, "ro.alarm_boot"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    .line 726
    const-string/jumbo v4, "trigger_restart_min_framework"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 727
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v7, "Detected encryption in progress - only parsing core apps"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 741
    :cond_0
    :goto_1
    const-string/jumbo v4, "StartPackageManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 742
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v7, "!@Boot: Start PackageManagerService"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 744
    iget v4, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v4, :cond_4

    move v4, v5

    :goto_2
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 743
    invoke-static {v7, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 745
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "!@Boot: End PackageManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 747
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 748
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 753
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_1

    .line 754
    const-string/jumbo v4, "config.disable_otadexopt"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 756
    .local v1, "disableOtaDexopt":Z
    if-nez v1, :cond_1

    .line 757
    const-string/jumbo v4, "StartOtaDexOptService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 759
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, v5}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 768
    .end local v1    # "disableOtaDexopt":Z
    :cond_1
    :goto_3
    const-string/jumbo v4, "StartUserManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 769
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 770
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 773
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 776
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 780
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 673
    return-void

    .line 694
    .end local v0    # "cryptState":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 695
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v7, "Failure starting MultiScreen Manager Service"

    invoke-static {v4, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 729
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "cryptState":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 730
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v7, "Device encrypted - only parsing core apps"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_1

    .line 732
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v4, :cond_0

    .line 737
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_1

    :cond_4
    move v4, v6

    .line 744
    goto/16 :goto_2

    .line 760
    .restart local v1    # "disableOtaDexopt":Z
    :catch_1
    move-exception v2

    .line 761
    .restart local v2    # "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v4, "starting OtaDexOptService"

    invoke-direct {p0, v4, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 763
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_3

    .line 762
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    .line 763
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 762
    throw v4
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 791
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 792
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 793
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 792
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 796
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 786
    return-void
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3036
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3037
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 3036
    if-eqz v2, :cond_1

    .line 3039
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    .line 3040
    .local v1, "emMgr":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-virtual {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->readyEmergencyMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3035
    .end local v1    # "emMgr":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_1
    :goto_0
    return-void

    .line 3041
    :catch_0
    move-exception v0

    .line 3042
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Starting emergency service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startOtherServices()V
    .locals 221

    .prologue
    .line 807
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 808
    .local v5, "context":Landroid/content/Context;
    const/16 v209, 0x0

    .line 809
    .local v209, "vibrator":Lcom/android/server/VibratorService;
    const/16 v159, 0x0

    .line 810
    .local v159, "mountService":Landroid/os/storage/IMountService;
    const/4 v9, 0x0

    .line 811
    .local v9, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v8, 0x0

    .line 812
    .local v8, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v165, 0x0

    .line 813
    .local v165, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v57, 0x0

    .line 814
    .local v57, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v166, 0x0

    .line 815
    .local v166, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v186, 0x0

    .line 816
    .local v186, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v220, 0x0

    .line 817
    .local v220, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v184, 0x0

    .line 818
    .local v184, "serial":Lcom/android/server/SerialService;
    const/16 v168, 0x0

    .line 819
    .local v168, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v54, 0x0

    .line 820
    .local v54, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v116, 0x0

    .line 821
    .local v116, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v204, 0x0

    .line 822
    .local v204, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v64, 0x0

    .line 824
    .local v64, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v72, 0x0

    .line 826
    .local v72, "dEncService":Lcom/android/server/DirEncryptService;
    const/16 v136, 0x0

    .line 827
    .local v136, "mHMS":Lcom/android/server/HarmonyEASService;
    const/16 v101, 0x0

    .line 828
    .local v101, "extControlDevice":Lcom/sec/rll/ExtControlDeviceService;
    const/16 v27, 0x0

    .line 829
    .local v27, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v110, 0x0

    .line 830
    .local v110, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v218, 0x0

    .line 831
    .local v218, "wigigP2pService":Ljava/lang/Object;
    const/16 v219, 0x0

    .line 834
    .local v219, "wigigService":Ljava/lang/Object;
    const/16 v88, 0x0

    .line 837
    .local v88, "dlpService":Lcom/android/server/DLPManagerService;
    const/16 v146, 0x0

    .line 838
    .local v146, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    const/16 v148, 0x0

    .line 839
    .local v148, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    const/16 v138, 0x0

    .line 840
    .local v138, "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    const/16 v140, 0x0

    .line 844
    .local v140, "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    const/16 v182, 0x0

    .line 845
    .local v182, "sdpService":Lcom/android/server/SdpManagerService;
    const/16 v180, 0x0

    .line 849
    .local v180, "sdpLogService":Lcom/android/server/SdpLogService;
    const/16 v134, 0x0

    .line 850
    .local v134, "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    const/16 v132, 0x0

    .line 851
    .local v132, "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    const/16 v128, 0x0

    .line 855
    .local v128, "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    const/16 v130, 0x0

    .line 859
    .local v130, "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    const/16 v191, 0x0

    .line 860
    .local v191, "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    const/16 v187, 0x0

    .line 861
    .local v187, "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    const/16 v195, 0x0

    .line 862
    .local v195, "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    const/16 v189, 0x0

    .line 863
    .local v189, "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    const/16 v193, 0x0

    .line 866
    .local v193, "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    const/16 v144, 0x0

    .line 869
    .local v144, "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    const/16 v213, 0x0

    .line 877
    .local v213, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    const-string/jumbo v6, "config.disable_storage"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v84

    .line 878
    .local v84, "disableStorage":Z
    const-string/jumbo v6, "config.disable_bluetooth"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v74

    .line 879
    .local v74, "disableBluetooth":Z
    const-string/jumbo v6, "config.disable_location"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v75

    .line 880
    .local v75, "disableLocation":Z
    const-string/jumbo v6, "config.disable_systemui"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v85

    .line 881
    .local v85, "disableSystemUI":Z
    const-string/jumbo v6, "config.disable_noncore"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v79

    .line 882
    .local v79, "disableNonCoreServices":Z
    const-string/jumbo v6, "config.disable_network"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v77

    .line 883
    .local v77, "disableNetwork":Z
    const-string/jumbo v6, "config.disable_networktime"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v78

    .line 884
    .local v78, "disableNetworkTime":Z
    const-string/jumbo v6, "config.disable_rtt"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v80

    .line 885
    .local v80, "disableRtt":Z
    const-string/jumbo v6, "config.disable_mediaproj"

    .line 886
    const/4 v7, 0x0

    .line 885
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v76

    .line 887
    .local v76, "disableMediaProjection":Z
    const-string/jumbo v6, "config.disable_serial"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v83

    .line 888
    .local v83, "disableSerial":Z
    const-string/jumbo v6, "config.disable_searchmanager"

    .line 889
    const/4 v7, 0x0

    .line 888
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v82

    .line 890
    .local v82, "disableSearchManager":Z
    const-string/jumbo v6, "config.disable_trustmanager"

    .line 891
    const/4 v7, 0x0

    .line 890
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v87

    .line 892
    .local v87, "disableTrustManager":Z
    const-string/jumbo v6, "config.disable_textservices"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v86

    .line 893
    .local v86, "disableTextServices":Z
    const-string/jumbo v6, "config.disable_samplingprof"

    .line 894
    const/4 v7, 0x0

    .line 893
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v81

    .line 895
    .local v81, "disableSamplingProfiler":Z
    const-string/jumbo v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v118

    .line 896
    .local v118, "isEmulator":Z
    const-string/jumbo v6, "persist.wigig.enable"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v97

    .line 899
    .local v97, "enableWigig":Z
    :try_start_0
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Reading configuration..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 902
    const-string/jumbo v6, "StartSchedulingPolicyService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 903
    const-string/jumbo v6, "scheduling_policy"

    new-instance v7, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v7}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 904
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 906
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 908
    const-string/jumbo v6, "StartTelephonyRegistry"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 909
    new-instance v205, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v205

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_97

    .line 910
    .end local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v205, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v6, "telephony.registry"

    move-object/from16 v0, v205

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 911
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 913
    const-string/jumbo v6, "StartEntropyMixer"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 914
    new-instance v6, Lcom/android/server/EntropyMixer;

    invoke-direct {v6, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 915
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 918
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v208

    .line 919
    .local v208, "versionInfo":Landroid/os/Bundle;
    const-string/jumbo v6, "2.0"

    const-string/jumbo v7, "version"

    move-object/from16 v0, v208

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    .line 921
    :try_start_2
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Persona Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v146

    .line 923
    .local v146, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    const-string/jumbo v6, "persona"

    move-object/from16 v0, v146

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 930
    .end local v146    # "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    :goto_0
    :try_start_3
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KnoxMUMContainerPolicy Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    new-instance v139, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, v139

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 932
    .end local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .local v139, "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    :try_start_4
    const-string/jumbo v6, "mum_container_policy"

    move-object/from16 v0, v139

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_9f
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_98

    move-object/from16 v138, v139

    .line 939
    .end local v139    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    :goto_1
    :try_start_5
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KnoxMUMRCPPolicyService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    new-instance v141, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    move-object/from16 v0, v141

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 941
    .end local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .local v141, "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    :try_start_6
    const-string/jumbo v6, "mum_container_rcp_policy"

    move-object/from16 v0, v141

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_99

    move-object/from16 v140, v141

    .line 950
    .end local v141    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    :cond_0
    :goto_2
    :try_start_7
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Reactive Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 952
    :try_start_8
    const-string/jumbo v6, "ReactiveService"

    new-instance v7, Lcom/android/server/ReactiveService;

    invoke-direct {v7, v5}, Lcom/android/server/ReactiveService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 960
    :goto_3
    :try_start_9
    const-string/jumbo v6, "0"

    const-string/jumbo v7, "ro.security.vaultkeeper.feature"

    const-string/jumbo v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 961
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "VaultKeeper Service Enabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 963
    :try_start_a
    const-string/jumbo v6, "VaultKeeperService"

    new-instance v7, Lcom/android/server/VaultKeeperService;

    invoke-direct {v7, v5}, Lcom/android/server/VaultKeeperService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .line 975
    :goto_4
    :try_start_b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "DeviceRootKeyService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    .line 977
    :try_start_c
    const-string/jumbo v6, "DeviceRootKeyService"

    new-instance v7, Lcom/android/server/DeviceRootKeyService;

    invoke-direct {v7, v5}, Lcom/android/server/DeviceRootKeyService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1

    .line 986
    :goto_5
    :try_start_d
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "EngineeringModeService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1

    .line 988
    :try_start_e
    const-string/jumbo v6, "EngineeringModeService"

    new-instance v7, Lcom/android/server/EngineeringModeService;

    invoke-direct {v7, v5}, Lcom/android/server/EngineeringModeService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    .line 997
    :goto_6
    :try_start_f
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SATS: Secure AT Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1

    .line 999
    :try_start_10
    const-string/jumbo v6, "SatsService"

    new-instance v7, Lcom/android/server/SatsService;

    invoke-direct {v7, v5}, Lcom/android/server/SatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    .line 1006
    :goto_7
    :try_start_11
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1008
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Camera Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/camera/CameraService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1013
    new-instance v73, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1

    .line 1015
    .end local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v73, "dEncService":Lcom/android/server/DirEncryptService;
    :try_start_12
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1016
    const-string/jumbo v6, "DirEncryptService"

    move-object/from16 v0, v73

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_9a

    :cond_1
    move-object/from16 v72, v73

    .line 1025
    .end local v73    # "dEncService":Lcom/android/server/DirEncryptService;
    :goto_8
    :try_start_13
    const-string/jumbo v6, "StartAccountManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1027
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1029
    const-string/jumbo v6, "StartContentService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1031
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1033
    const-string/jumbo v6, "InstallSystemProviders"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 1035
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1037
    const-string/jumbo v6, "StartVibratorService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1038
    new-instance v210, Lcom/android/server/VibratorService;

    move-object/from16 v0, v210

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1

    .line 1039
    .end local v209    # "vibrator":Lcom/android/server/VibratorService;
    .local v210, "vibrator":Lcom/android/server/VibratorService;
    :try_start_14
    const-string/jumbo v6, "vibrator"

    move-object/from16 v0, v210

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1040
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1042
    const-string/jumbo v6, "StartConsumerIrService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1043
    new-instance v65, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v65

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_9b

    .line 1044
    .local v65, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_15
    const-string/jumbo v6, "consumer_ir"

    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v65

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1045
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1047
    const-string/jumbo v6, "StartAlarmManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1049
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1052
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SSRM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_b

    .line 1054
    :try_start_16
    new-instance v44, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/ssrm.jar"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1055
    .local v44, "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v43

    .line 1056
    .local v43, "cfmsClass":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    const-class v7, Landroid/app/IActivityManager;

    const/4 v10, 0x1

    aput-object v7, v6, v10

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v45

    .line 1057
    .local v45, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x1

    aput-object v7, v6, v10

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v199

    check-cast v199, Landroid/os/IBinder;

    .line 1058
    .local v199, "ssrmService":Landroid/os/IBinder;
    const-string/jumbo v6, "CustomFrequencyManagerService"

    move-object/from16 v0, v199

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_b

    .line 1066
    .end local v43    # "cfmsClass":Ljava/lang/Class;
    .end local v44    # "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v45    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v199    # "ssrmService":Landroid/os/IBinder;
    :goto_9
    :try_start_17
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Hqm Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_b

    .line 1068
    :try_start_18
    new-instance v34, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/hqm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1069
    .local v34, "HqmServiceClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.samsung.android.hqm.HqmManagerService"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v33

    .line 1070
    .local v33, "HqmServiceClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v35

    .line 1071
    .local v35, "HqmServiceConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/IBinder;

    .line 1072
    .local v32, "HqmService":Landroid/os/IBinder;
    const-string/jumbo v6, "HqmManagerService"

    move-object/from16 v0, v32

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_b

    .line 1079
    .end local v32    # "HqmService":Landroid/os/IBinder;
    .end local v33    # "HqmServiceClass":Ljava/lang/Class;
    .end local v34    # "HqmServiceClassLoader":Ldalvik/system/PathClassLoader;
    .end local v35    # "HqmServiceConstructor":Ljava/lang/reflect/Constructor;
    :goto_a
    :try_start_19
    const-string/jumbo v6, "InitWatchdog"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1080
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v212

    .line 1081
    .local v212, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v212

    invoke-virtual {v0, v5, v6}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1082
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1084
    const-string/jumbo v6, "StartInputManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1085
    new-instance v117, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v117

    invoke-direct {v0, v5}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_b

    .line 1086
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v117, "inputManager":Lcom/android/server/input/InputManagerService;
    const-wide/32 v6, 0x80000

    :try_start_1a
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1088
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1089
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Context Aware Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const-string/jumbo v6, "context_aware"

    new-instance v7, Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {v7, v5}, Lcom/samsung/android/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_e

    .line 1094
    :cond_2
    :try_start_1b
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1095
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.feature.scontext_lite"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 1094
    if-eqz v6, :cond_4

    .line 1096
    :cond_3
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemContextService Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    new-instance v179, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v179

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1098
    .local v179, "scontextClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.samsung.android.hardware.context.SemContextService"

    move-object/from16 v0, v179

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v49

    .line 1099
    .local v49, "class_SContextService":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v62

    .line 1100
    .local v62, "constructor_SContextService":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "scontext"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v62

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_e

    .line 1106
    .end local v49    # "class_SContextService":Ljava/lang/Class;
    .end local v62    # "constructor_SContextService":Ljava/lang/reflect/Constructor;
    .end local v179    # "scontextClassLoader":Ldalvik/system/PathClassLoader;
    :cond_4
    :goto_b
    :try_start_1c
    const-string/jumbo v6, "StartWindowManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1118
    const-string/jumbo v6, "1"

    const-string/jumbo v7, "ro.config.tima"

    const-string/jumbo v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_e

    move-result v206

    .line 1120
    .local v206, "timaEnabled":Z
    :try_start_1d
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "TIMA Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/4 v6, -0x2

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1124
    new-instance v6, Lcom/android/server/TimaService;

    invoke-direct {v6, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    .line 1125
    const-string/jumbo v6, "tima"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1127
    new-instance v6, Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-direct {v6, v5}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->timaKeystoreService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .line 1128
    const-string/jumbo v6, "knox_timakeystore_policy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->timaKeystoreService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1130
    const-string/jumbo v6, "knox_timakeystore_policy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->timaKeystoreService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const/4 v10, 0x0

    invoke-static {v6, v7, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_e

    .line 1135
    :goto_c
    const/16 v6, -0x13

    :try_start_1e
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_e

    .line 1139
    :try_start_1f
    const-string/jumbo v6, "com.sec.tima.TimaKeyStoreProvider"

    .line 1138
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v119

    .line 1140
    .local v119, "keyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v119 .. v119}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 1141
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Added TimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1146
    const-string/jumbo v6, "com.sec.tima.FipsTimaKeyStoreProvider"

    .line 1145
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v31

    .line 1147
    .local v31, "FipsKeyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 1148
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Added FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_e

    .line 1156
    .end local v31    # "FipsKeyStoreClass":Ljava/lang/Class;
    .end local v119    # "keyStoreClass":Ljava/lang/Class;
    :cond_5
    :goto_d
    if-eqz v206, :cond_6

    .line 1158
    :try_start_20
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "PKM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    new-instance v6, Lcom/android/server/PKMService;

    invoke-direct {v6, v5}, Lcom/android/server/PKMService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->pkmService:Lcom/android/server/PKMService;

    .line 1160
    const-string/jumbo v6, "pkm"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->pkmService:Lcom/android/server/PKMService;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_e

    .line 1166
    :goto_e
    const/16 v6, -0x13

    :try_start_21
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_e

    .line 1170
    :try_start_22
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "TIMA Observer"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    new-instance v6, Lcom/android/server/TimaObserver;

    invoke-direct {v6, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->timaObserver:Lcom/android/server/TimaObserver;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_e

    .line 1179
    :goto_f
    :try_start_23
    const-string/jumbo v6, "3.0"

    const-string/jumbo v7, "ro.config.timaversion"

    const-string/jumbo v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v207

    .line 1180
    .local v207, "timaversion":Z
    if-eqz v207, :cond_6

    .line 1183
    const/16 v113, 0x0

    .line 1184
    .local v113, "icccService":Lcom/android/server/IcccManagerService;
    new-instance v113, Lcom/android/server/IcccManagerService;

    .end local v113    # "icccService":Lcom/android/server/IcccManagerService;
    move-object/from16 v0, v113

    invoke-direct {v0, v5}, Lcom/android/server/IcccManagerService;-><init>(Landroid/content/Context;)V

    .line 1185
    .local v113, "icccService":Lcom/android/server/IcccManagerService;
    const-string/jumbo v6, "iccc"

    move-object/from16 v0, v113

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1187
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "initialization"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_e

    .line 1189
    :try_start_24
    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "TIMA Version write result: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v10, -0xdffffe

    const/4 v11, 0x3

    move-object/from16 v0, v113

    invoke-virtual {v0, v10, v11}, Lcom/android/server/IcccManagerService;->setSecureData(II)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/IcccManagerService;->getTrustedBootData()I

    move-result v114

    .line 1191
    .local v114, "iccc_result":I
    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getTrustedBootData result : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v114

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    if-nez v114, :cond_55

    .line 1194
    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "trustboot write result: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v10, -0xdfffff

    const/4 v11, 0x0

    move-object/from16 v0, v113

    invoke-virtual {v0, v10, v11}, Lcom/android/server/IcccManagerService;->setSecureData(II)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_e

    .line 1208
    .end local v114    # "iccc_result":I
    :goto_10
    :try_start_25
    new-instance v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {v6, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1209
    const-string/jumbo v6, "knox_ccm_policy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1210
    sget-object v6, Landroid/app/enterprise/EnterpriseDeviceManager;->KNOX_CCM_POLICY_SERVICE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const/4 v10, 0x0

    invoke-static {v6, v7, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_e

    .line 1223
    .end local v113    # "icccService":Lcom/android/server/IcccManagerService;
    .end local v207    # "timaversion":Z
    :cond_6
    :goto_11
    :try_start_26
    new-instance v6, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {v6, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 1224
    const-string/jumbo v6, "knox_ucsm_policy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1225
    const-string/jumbo v6, "knox_ucsm_policy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    const/4 v10, 0x0

    invoke-static {v6, v7, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_e

    .line 1231
    :goto_12
    :try_start_27
    new-instance v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {v6, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 1232
    const-string/jumbo v6, "com.samsung.ucs.ucsservice"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_e

    .line 1242
    :goto_13
    :try_start_28
    new-instance v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-direct {v6, v5}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->SCEPolicy:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    .line 1243
    const-string/jumbo v6, "knox_scep_policy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->SCEPolicy:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const/4 v10, 0x1

    invoke-static {v6, v7, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1244
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CEP is enabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_e

    .line 1250
    :goto_14
    :try_start_29
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CEP Proxy KS Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    const-string/jumbo v6, "cepproxyks"

    new-instance v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-direct {v7, v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_e

    .line 1258
    :goto_15
    :try_start_2a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Email Keystore Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    const-string/jumbo v6, "emailksproxy"

    new-instance v7, Lcom/android/server/emailksproxy/EmailKeystoreService;

    invoke-direct {v7, v5}, Lcom/android/server/emailksproxy/EmailKeystoreService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_e

    .line 1265
    :goto_16
    :try_start_2b
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_56

    const/4 v6, 0x1

    move v7, v6

    .line 1266
    :goto_17
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v6, :cond_57

    const/4 v6, 0x0

    :goto_18
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 1264
    move-object/from16 v0, v117

    invoke-static {v5, v0, v7, v6, v10}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v220

    .line 1267
    .local v220, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v6, "window"

    move-object/from16 v0, v220

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1268
    const-string/jumbo v6, "input"

    move-object/from16 v0, v117

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1269
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1271
    const-string/jumbo v6, "StartVrManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1273
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1277
    const-string/jumbo v6, "StartGearVrManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1279
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "com.sec.feature.barcode_emulator"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_e

    move-result v6

    if-eqz v6, :cond_7

    .line 1286
    :try_start_2c
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "BarBeamService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    new-instance v41, Landroid/app/BarBeamService;

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 1289
    .local v41, "barbeam":Landroid/app/BarBeamService;
    const-string/jumbo v6, "barbeam"

    move-object/from16 v0, v41

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_e

    .line 1301
    .end local v41    # "barbeam":Landroid/app/BarBeamService;
    :cond_7
    :goto_19
    :try_start_2d
    sget-object v6, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    move-result-object v164

    check-cast v164, Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    .line 1302
    .local v164, "multiWindowManagerServiceBridge":Lcom/android/server/am/IMultiWindowManagerServiceBridge;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v164

    move-object/from16 v1, v220

    invoke-interface {v0, v6, v1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->setSystemService(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_e

    .line 1309
    .end local v164    # "multiWindowManagerServiceBridge":Lcom/android/server/am/IMultiWindowManagerServiceBridge;
    :goto_1a
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v220

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1311
    invoke-virtual/range {v220 .. v220}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    move-object/from16 v0, v117

    invoke-virtual {v0, v6}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1312
    invoke-virtual/range {v117 .. v117}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1315
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1320
    if-eqz v118, :cond_58

    .line 1321
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Bluetooth Service (emulator)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :goto_1b
    const-string/jumbo v6, "ConnectivityMetricsLoggerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1344
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1346
    const-string/jumbo v6, "PinnerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PinnerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1348
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1352
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "RCP Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_e

    .line 1354
    :try_start_2f
    new-instance v149, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v149

    invoke-direct {v0, v5}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_e

    .line 1355
    .end local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .local v149, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :try_start_30
    const-string/jumbo v6, "rcp"

    move-object/from16 v0, v149

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_9d
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_9c

    move-object/from16 v148, v149

    .line 1362
    .end local v149    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :goto_1c
    :try_start_31
    new-instance v6, Landroid/security/keystore/AndroidKeyStoreProvider;

    invoke-direct {v6}, Landroid/security/keystore/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_e

    move-object/from16 v64, v65

    .end local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v64, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v204, v205

    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v204, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v116, v117

    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v116, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v209, v210

    .line 1369
    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v206    # "timaEnabled":Z
    .end local v208    # "versionInfo":Landroid/os/Bundle;
    .end local v210    # "vibrator":Lcom/android/server/VibratorService;
    .end local v212    # "watchdog":Lcom/android/server/Watchdog;
    .end local v220    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_1d
    const/16 v200, 0x0

    .line 1370
    .local v200, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v170, 0x0

    .line 1371
    .local v170, "notification":Landroid/app/INotificationManager;
    const/16 v122, 0x0

    .line 1372
    .local v122, "location":Lcom/android/server/LocationManagerService;
    const/16 v176, 0x0

    .line 1373
    .local v176, "sLocation":Landroid/os/IBinder;
    const/16 v66, 0x0

    .line 1374
    .local v66, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v124, 0x0

    .line 1376
    .local v124, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v154, 0x0

    .line 1378
    .local v154, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v99, 0x0

    .line 1382
    .local v99, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v120, 0x0

    .line 1389
    .local v120, "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    const/16 v197, 0x0

    .line 1394
    .local v197, "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    const/16 v126, 0x0

    .line 1395
    .local v126, "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    const/16 v142, 0x0

    .line 1399
    .local v142, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    const/16 v174, 0x0

    .line 1403
    .local v174, "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8

    .line 1404
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1406
    const-string/jumbo v6, "StartAccessibilityManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1408
    :try_start_32
    const-string/jumbo v6, "accessibility"

    .line 1409
    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 1408
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1d

    .line 1413
    :goto_1e
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1417
    :cond_8
    :try_start_33
    invoke-virtual/range {v220 .. v220}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1e

    .line 1424
    :goto_1f
    :try_start_34
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v173

    .line 1425
    .local v173, "pm":Landroid/content/pm/PackageManager;
    if-eqz v173, :cond_9

    .line 1426
    const-string/jumbo v6, "com.sec.feature.cover.nfc_authentication"

    move-object/from16 v0, v173

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1427
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Samsung Accessory Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    new-instance v175, Lcom/samsung/accessory/manager/SAccessoryManager;

    move-object/from16 v0, v175

    move-object/from16 v1, v116

    invoke-direct {v0, v5, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1f

    .line 1429
    .end local v174    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .local v175, "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :try_start_35
    const-string/jumbo v6, "saccessory_manager"

    move-object/from16 v0, v175

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1430
    move-object/from16 v0, v116

    move-object/from16 v1, v175

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setUnVerifiedCoverAttachCallbacks(Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_96

    move-object/from16 v174, v175

    .line 1439
    .end local v173    # "pm":Landroid/content/pm/PackageManager;
    .end local v175    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :cond_9
    :goto_20
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_a

    .line 1441
    :try_start_36
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Add FM_RADIO_SERVICE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    const-string/jumbo v6, "FMPlayer"

    new-instance v7, Lcom/android/server/FMRadioService;

    invoke-direct {v7, v5}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1443
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "FMRadio service added.."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_20

    .line 1451
    :cond_a
    :goto_21
    :try_start_37
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "mDNIe Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const/16 v152, 0x0

    .line 1453
    .local v152, "mdnieClass":Ljava/lang/Class;
    const-string/jumbo v6, "com.samsung.android.hardware.display.SemMdnieManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v152

    .line 1454
    .local v152, "mdnieClass":Ljava/lang/Class;
    if-nez v152, :cond_5c

    .line 1455
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Mdnie Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_21

    .line 1466
    .end local v152    # "mdnieClass":Ljava/lang/Class;
    :goto_22
    const/16 v68, 0x0

    .line 1468
    .local v68, "coverService":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_c

    .line 1469
    const-string/jumbo v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 1470
    .local v70, "cryptState":Ljava/lang/String;
    const-string/jumbo v6, "trigger_restart_min_framework"

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "1"

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 1471
    :cond_b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Detected encryption in progress - unable CoverManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    .end local v68    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v70    # "cryptState":Ljava/lang/String;
    :cond_c
    :goto_23
    const/16 v150, 0x0

    .line 1494
    .local v150, "mateService":Lcom/samsung/android/mateservice/MateService;
    :try_start_38
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v173

    .line 1495
    .restart local v173    # "pm":Landroid/content/pm/PackageManager;
    if-eqz v173, :cond_d

    const-string/jumbo v6, "com.sec.feature.cover.nfc_authentication"

    move-object/from16 v0, v173

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1496
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Mate Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    new-instance v151, Lcom/samsung/android/mateservice/MateService;

    move-object/from16 v0, v151

    invoke-direct {v0, v5}, Lcom/samsung/android/mateservice/MateService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_23

    .line 1498
    .end local v150    # "mateService":Lcom/samsung/android/mateservice/MateService;
    .local v151, "mateService":Lcom/samsung/android/mateservice/MateService;
    :try_start_39
    const-string/jumbo v6, "mate_service"

    move-object/from16 v0, v151

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_94

    move-object/from16 v150, v151

    .line 1505
    .end local v151    # "mateService":Lcom/samsung/android/mateservice/MateService;
    .end local v173    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    :goto_24
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_f

    .line 1506
    if-nez v84, :cond_e

    .line 1507
    const-string/jumbo v6, "0"

    const-string/jumbo v7, "system_init.startmountservice"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 1522
    .end local v159    # "mountService":Landroid/os/storage/IMountService;
    :cond_e
    :goto_25
    :try_start_3a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "DirEncryptSerrvice"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    if-eqz v72, :cond_f

    .line 1524
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "DirEncryptService.SystemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    invoke-virtual/range {v72 .. v72}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_25

    .line 1535
    :cond_f
    :goto_26
    :try_start_3b
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v171

    .line 1536
    .local v171, "pM":Landroid/content/pm/PackageManager;
    if-eqz v171, :cond_10

    .line 1537
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "PackageManager is not null!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    const-string/jumbo v6, "com.sec.feature.motionrecognition_service"

    move-object/from16 v0, v171

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1539
    const-string/jumbo v6, "com.sec.feature.sensorhub"

    move-object/from16 v0, v171

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string/jumbo v6, "com.sec.feature.scontext_lite"

    move-object/from16 v0, v171

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 1540
    new-instance v158, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v158

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1541
    .local v158, "motionClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.samsung.android.gesture.MotionRecognitionService"

    move-object/from16 v0, v158

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v48

    .line 1542
    .local v48, "class_MotionRecognitionService":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v61

    .line 1543
    .local v61, "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "motion_recognition"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v61

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1544
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "MotionRecognitionService Service!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_26

    .line 1554
    .end local v48    # "class_MotionRecognitionService":Ljava/lang/Class;
    .end local v61    # "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    .end local v158    # "motionClassLoader":Ldalvik/system/PathClassLoader;
    .end local v171    # "pM":Landroid/content/pm/PackageManager;
    :cond_10
    :goto_27
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1556
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_11

    .line 1557
    const-string/jumbo v6, "UpdatePackagesIfNeeded"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1559
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_27

    .line 1563
    :goto_28
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1577
    :cond_11
    :try_start_3d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 1578
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1579
    const v10, 0x10403c0

    .line 1578
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1580
    const/4 v10, 0x0

    .line 1577
    invoke-interface {v6, v7, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_3d} :catch_93

    .line 1584
    :goto_29
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_72

    .line 1585
    if-nez v79, :cond_13

    .line 1586
    const-string/jumbo v6, "StartLockSettingsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1588
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.LockSettingsService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1590
    const-string/jumbo v6, "lock_settings"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 1589
    invoke-static {v6}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_28

    move-result-object v124

    .line 1594
    .end local v124    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :goto_2a
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1596
    const-string/jumbo v6, "ro.frp.pst"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1597
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1600
    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1604
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1609
    :cond_13
    :try_start_3f
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "HarmonyEAS service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    new-instance v137, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v137

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_29

    .line 1611
    .end local v136    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v137, "mHMS":Lcom/android/server/HarmonyEASService;
    :try_start_40
    const-string/jumbo v6, "harmony_eas_service"

    move-object/from16 v0, v137

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1612
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Harmony EAS service created..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_92

    move-object/from16 v136, v137

    .line 1621
    .end local v137    # "mHMS":Lcom/android/server/HarmonyEASService;
    :goto_2b
    :try_start_41
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SdpManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    new-instance v183, Lcom/android/server/SdpManagerService;

    move-object/from16 v0, v183

    invoke-direct {v0, v5}, Lcom/android/server/SdpManagerService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_2a

    .line 1623
    .end local v182    # "sdpService":Lcom/android/server/SdpManagerService;
    .local v183, "sdpService":Lcom/android/server/SdpManagerService;
    :try_start_42
    const-string/jumbo v6, "sdp"

    move-object/from16 v0, v183

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_91

    move-object/from16 v182, v183

    .line 1629
    .end local v183    # "sdpService":Lcom/android/server/SdpManagerService;
    :goto_2c
    :try_start_43
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SdpLogService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    new-instance v181, Lcom/android/server/SdpLogService;

    move-object/from16 v0, v181

    invoke-direct {v0, v5}, Lcom/android/server/SdpLogService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2b

    .line 1631
    .end local v180    # "sdpLogService":Lcom/android/server/SdpLogService;
    .local v181, "sdpLogService":Lcom/android/server/SdpLogService;
    :try_start_44
    const-string/jumbo v6, "sdp_log"

    move-object/from16 v0, v181

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_90

    move-object/from16 v180, v181

    .line 1639
    .end local v181    # "sdpLogService":Lcom/android/server/SdpLogService;
    :goto_2d
    :try_start_45
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "DLPManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    new-instance v89, Lcom/android/server/DLPManagerService;

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Lcom/android/server/DLPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2c

    .line 1641
    .end local v88    # "dlpService":Lcom/android/server/DLPManagerService;
    .local v89, "dlpService":Lcom/android/server/DLPManagerService;
    :try_start_46
    const-string/jumbo v6, "dlp"

    move-object/from16 v0, v89

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_8f

    move-object/from16 v88, v89

    .line 1648
    .end local v89    # "dlpService":Lcom/android/server/DLPManagerService;
    :goto_2e
    if-nez v79, :cond_14

    .line 1650
    :try_start_47
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Enterprise Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1652
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v99

    .line 1653
    .local v99, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Enterprise Policymanager service created..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2d

    .line 1661
    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_14
    :goto_2f
    if-nez v79, :cond_15

    .line 1663
    :try_start_48
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KnoxCustom Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    new-instance v121, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    move-object/from16 v0, v121

    invoke-direct {v0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2e

    .line 1665
    .end local v120    # "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .local v121, "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    :try_start_49
    const-string/jumbo v6, "knoxcustom"

    move-object/from16 v0, v121

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1666
    const-string/jumbo v6, "knoxcustom"

    const/4 v7, 0x0

    move-object/from16 v0, v121

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1667
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KnoxCustom Policy added."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_8e

    move-object/from16 v120, v121

    .line 1675
    .end local v121    # "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    :cond_15
    :goto_30
    if-nez v79, :cond_16

    .line 1677
    if-eqz v99, :cond_16

    .line 1678
    :try_start_4a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KNOX Enterprise SSO service is added"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    new-instance v129, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v0, v129

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2f

    .line 1680
    .end local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .local v129, "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    :try_start_4b
    const-string/jumbo v6, "enterprise_sso_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v129

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1682
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KNOX Enterprise Userspace SSO service is added"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    new-instance v133, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-object/from16 v0, v133

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_8b

    .line 1684
    .local v133, "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    :try_start_4c
    const-string/jumbo v6, "enterprise_user_space_sso_policy"

    .end local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    const/4 v7, 0x1

    move-object/from16 v0, v133

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1686
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KNOX Generic SSO service is added"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    new-instance v135, Lcom/android/server/enterprise/sso/GenericSSOService;

    move-object/from16 v0, v135

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_8c

    .line 1688
    .local v135, "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    :try_start_4d
    const-string/jumbo v6, "genericssoservice"

    .end local v134    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    const/4 v7, 0x1

    move-object/from16 v0, v135

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_8d

    move-object/from16 v128, v129

    .end local v129    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .local v128, "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    move-object/from16 v132, v133

    .end local v133    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .local v132, "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    move-object/from16 v134, v135

    .line 1697
    .end local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .end local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .end local v135    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    :cond_16
    :goto_31
    if-nez v79, :cond_17

    .line 1699
    if-eqz v99, :cond_17

    .line 1700
    :try_start_4e
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KNOX Shared Device service is added"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    new-instance v131, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    move-object/from16 v0, v131

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_30

    .line 1702
    .end local v130    # "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .local v131, "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    :try_start_4f
    const-string/jumbo v6, "enterprise_shared_device_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v131

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_8a

    move-object/from16 v130, v131

    .line 1711
    .end local v131    # "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    :cond_17
    :goto_32
    if-nez v79, :cond_18

    .line 1713
    if-eqz v99, :cond_18

    .line 1714
    :try_start_50
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KNOX OTP service is added"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    new-instance v145, Lcom/android/server/enterprise/otp/OTPService;

    move-object/from16 v0, v145

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/otp/OTPService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_31

    .line 1716
    .end local v144    # "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    .local v145, "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    :try_start_51
    const-string/jumbo v6, "otp_service"

    move-object/from16 v0, v145

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1717
    const-string/jumbo v6, "otp_service"

    const/4 v7, 0x0

    move-object/from16 v0, v145

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_89

    move-object/from16 v144, v145

    .line 1726
    .end local v145    # "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    :cond_18
    :goto_33
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->isEnterpriseBillingFeatureSupported()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1728
    :try_start_52
    new-instance v98, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v0, v98

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;-><init>(Landroid/content/Context;)V

    .line 1729
    .local v98, "enterpriseBillingPolicy":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    const-string/jumbo v6, "enterprise_billing_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v98

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_32

    .line 1738
    .end local v98    # "enterpriseBillingPolicy":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_19
    :goto_34
    :try_start_53
    new-instance v198, Lcom/android/server/enterprise/spd/SPDControlPolicy;

    move-object/from16 v0, v198

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/spd/SPDControlPolicy;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_33

    .line 1739
    .end local v197    # "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    .local v198, "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    :try_start_54
    const-string/jumbo v6, "spd_control_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v198

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_88

    move-object/from16 v197, v198

    .line 1744
    .end local v198    # "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    :goto_35
    :try_start_55
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SEAMS"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    const-string/jumbo v6, "SEAMService"

    new-instance v7, Lcom/android/server/SEAMService;

    invoke-direct {v7, v5}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_34

    .line 1751
    :goto_36
    :try_start_56
    const-string/jumbo v6, "sedenial"

    new-instance v7, Lcom/android/server/SEDenialService;

    invoke-direct {v7, v5}, Lcom/android/server/SEDenialService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1752
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SEDenial service added"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_35

    .line 1758
    :goto_37
    if-nez v85, :cond_1a

    .line 1759
    const-string/jumbo v6, "StartStatusBarManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1761
    :try_start_57
    new-instance v201, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v201

    move-object/from16 v1, v220

    invoke-direct {v0, v5, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_36

    .line 1762
    .end local v200    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v201, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_58
    const-string/jumbo v6, "statusbar"

    move-object/from16 v0, v201

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_87

    move-object/from16 v200, v201

    .line 1766
    .end local v201    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_38
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1769
    :cond_1a
    if-nez v79, :cond_1b

    .line 1770
    const-string/jumbo v6, "StartClipboardService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1772
    :try_start_59
    const-string/jumbo v6, "clipboard"

    .line 1773
    new-instance v7, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v7, v5}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    .line 1772
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_37

    .line 1777
    :goto_39
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1781
    :cond_1b
    if-eqz v79, :cond_60

    .line 1794
    :goto_3a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SEC_PRODUCT_FEATURE_KNOX_SUPPORT_ABSOLUTE_ANTITHEFT=FALSE - true"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :try_start_5a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Absolute Persistence Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    const-string/jumbo v6, "ABTPersistenceService"

    new-instance v7, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v7, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    .line 1797
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_39

    .line 1805
    :goto_3b
    if-nez v77, :cond_1c

    .line 1806
    const-string/jumbo v6, "StartNetworkManagementService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1808
    :try_start_5b
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v9

    .line 1809
    .local v9, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v6, "network_management"

    invoke-static {v6, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_3a

    .line 1813
    .end local v9    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_3c
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1817
    :cond_1c
    if-nez v79, :cond_1d

    .line 1819
    if-eqz v99, :cond_1d

    .line 1820
    :try_start_5c
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Adding EnterprisePremiumVpnService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    new-instance v127, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v127

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3b

    .line 1822
    .end local v126    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .local v127, "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    :try_start_5d
    const-string/jumbo v6, "enterprise_premium_vpn_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v127

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1824
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Adding KnoxVpnEngineService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    new-instance v143, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    move-object/from16 v0, v143

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;-><init>(Landroid/content/Context;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_85

    .line 1826
    .local v143, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    :try_start_5e
    const-string/jumbo v6, "knox_vpn_policy"

    .end local v142    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    const/4 v7, 0x1

    move-object/from16 v0, v143

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_86

    move-object/from16 v142, v143

    .end local v143    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .local v142, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    move-object/from16 v126, v127

    .line 1834
    .end local v127    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .end local v142    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    :cond_1d
    :goto_3d
    if-nez v79, :cond_1e

    if-eqz v86, :cond_61

    .line 1838
    :cond_1e
    :goto_3e
    if-nez v77, :cond_71

    .line 1839
    const-string/jumbo v6, "StartNetworkScoreService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1841
    :try_start_5f
    new-instance v167, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v167

    invoke-direct {v0, v5}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_3c

    .line 1842
    .end local v166    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v167, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_60
    const-string/jumbo v6, "network_score"

    move-object/from16 v0, v167

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_84

    move-object/from16 v166, v167

    .line 1846
    .end local v167    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_3f
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1848
    const-string/jumbo v6, "StartNetworkStatsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1850
    :try_start_61
    invoke-static {v5, v9}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v8

    .line 1851
    .local v8, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const-string/jumbo v6, "netstats"

    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3d

    .line 1855
    .end local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_40
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1857
    const-string/jumbo v6, "StartNetworkPolicyManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1859
    :try_start_62
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1860
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1861
    const-string/jumbo v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    check-cast v7, Landroid/os/IPowerManager;

    .line 1859
    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3e

    .line 1863
    .end local v165    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v4, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_63
    const-string/jumbo v6, "netpolicy"

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_83

    .line 1867
    :goto_41
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1869
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.wifi.nan"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 1870
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.nan.WifiNanService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1874
    :goto_42
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1875
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.WifiService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1877
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.hs20.WifiHs20Service"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1880
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1881
    const-string/jumbo v7, "com.android.server.wifi.scanner.WifiScanningService"

    .line 1880
    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1883
    if-nez v80, :cond_1f

    .line 1884
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.RttService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1887
    :cond_1f
    if-eqz v97, :cond_20

    .line 1889
    :try_start_64
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Wigig Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    new-instance v216, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/wigig-service.jar"

    .line 1892
    const-string/jumbo v7, "/system/lib64:/system/vendor/lib64"

    .line 1893
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 1891
    move-object/from16 v0, v216

    invoke-direct {v0, v6, v7, v10}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1895
    .local v216, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    .line 1894
    move-object/from16 v0, v216

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v217

    .line 1896
    .local v217, "wigigP2pClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v217

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v71

    .line 1897
    .local v71, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v71

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v218

    .line 1898
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const-string/jumbo v7, "wigigp2p"

    move-object/from16 v0, v218

    check-cast v0, Landroid/os/IBinder;

    move-object v6, v0

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1902
    const-string/jumbo v6, "com.qualcomm.qti.server.wigig.WigigService"

    .line 1901
    move-object/from16 v0, v216

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v215

    .line 1903
    .local v215, "wigigClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v215

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v71

    .line 1904
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v71

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v219

    .line 1905
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Successfully loaded WigigService class"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    const-string/jumbo v7, "wigig"

    move-object/from16 v0, v219

    check-cast v0, Landroid/os/IBinder;

    move-object v6, v0

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_3f

    .line 1912
    .end local v71    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v215    # "wigigClass":Ljava/lang/Class;
    .end local v216    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .end local v217    # "wigigP2pClass":Ljava/lang/Class;
    .end local v218    # "wigigP2pService":Ljava/lang/Object;
    .end local v219    # "wigigService":Ljava/lang/Object;
    :cond_20
    :goto_43
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.ethernet"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 1913
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 1912
    if-eqz v6, :cond_22

    .line 1914
    :cond_21
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1917
    :cond_22
    const-string/jumbo v6, "StartConnectivityService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1919
    :try_start_65
    new-instance v58, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v58

    invoke-direct {v0, v5, v9, v8, v4}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_40

    .line 1921
    .end local v57    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v58, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_66
    const-string/jumbo v6, "connectivity"

    move-object/from16 v0, v58

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1922
    move-object/from16 v0, v58

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1923
    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_82

    move-object/from16 v57, v58

    .line 1927
    .end local v58    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_44
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1929
    const-string/jumbo v6, "StartNsdService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1931
    :try_start_67
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v186

    .line 1933
    .local v186, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v6, "servicediscovery"

    .line 1932
    move-object/from16 v0, v186

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_41

    .line 1937
    .end local v186    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_45
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1941
    :goto_46
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1944
    :try_start_68
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Wi-Fi  Offload Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    new-instance v214, Lcom/android/server/wifioffload/WifiOffloadService;

    move-object/from16 v0, v214

    invoke-direct {v0, v5}, Lcom/android/server/wifioffload/WifiOffloadService;-><init>(Landroid/content/Context;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_42

    .line 1946
    .end local v213    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .local v214, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :try_start_69
    const-string/jumbo v6, "wifioffload"

    move-object/from16 v0, v214

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_81

    move-object/from16 v213, v214

    .line 1953
    .end local v214    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :cond_23
    :goto_47
    if-nez v79, :cond_24

    .line 1954
    const-string/jumbo v6, "StartUpdateLockService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1956
    :try_start_6a
    const-string/jumbo v6, "updatelock"

    .line 1957
    new-instance v7, Lcom/android/server/UpdateLockService;

    invoke-direct {v7, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 1956
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_43

    .line 1961
    :goto_48
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1964
    :cond_24
    if-nez v79, :cond_25

    .line 1965
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1968
    :cond_25
    if-nez v79, :cond_26

    .line 1970
    :try_start_6b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemExecute Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    const-string/jumbo v6, "execute"

    .line 1972
    new-instance v7, Lcom/android/server/execute/SemExecuteManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/execute/SemExecuteManagerService;-><init>(Landroid/content/Context;)V

    .line 1971
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_44

    .line 1983
    :cond_26
    :goto_49
    if-eqz v159, :cond_27

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v6, :cond_63

    .line 1992
    :cond_27
    :goto_4a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1994
    const-string/jumbo v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 1993
    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v170

    .line 1995
    .local v170, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v170

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1997
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1999
    if-nez v75, :cond_28

    .line 2000
    const-string/jumbo v6, "StartLocationManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2002
    :try_start_6c
    new-instance v123, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v123

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_46

    .line 2003
    .end local v122    # "location":Lcom/android/server/LocationManagerService;
    .local v123, "location":Lcom/android/server/LocationManagerService;
    :try_start_6d
    const-string/jumbo v6, "location"

    move-object/from16 v0, v123

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_80

    move-object/from16 v122, v123

    .line 2007
    .end local v123    # "location":Lcom/android/server/LocationManagerService;
    :goto_4b
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2009
    const-string/jumbo v6, "StartCountryDetectorService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2011
    :try_start_6e
    new-instance v67, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_47

    .line 2012
    .end local v66    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v67, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_6f
    const-string/jumbo v6, "country_detector"

    move-object/from16 v0, v67

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_7f

    move-object/from16 v66, v67

    .line 2016
    .end local v67    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_4c
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2021
    :cond_28
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Common_SupportHuxGpsEnableVzwLbsStack"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 2023
    const/16 v51, 0x0

    .line 2024
    .local v51, "clazz":Ljava/lang/Class;
    :try_start_70
    const-string/jumbo v6, "vzwlbs"

    const-string/jumbo v7, "Starting VZW Location Manager "

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    const-string/jumbo v6, "com.samsung.vzwlbs"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v39

    .line 2026
    .local v39, "apkServiceContext":Landroid/content/Context;
    const-string/jumbo v6, "vzwlbs"

    const-string/jumbo v7, "Loading VzwLocationManagerService from the APK"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_49

    .line 2028
    :try_start_71
    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string/jumbo v7, "com.vzw.location.service.VzwLocationManagerService"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v51

    .line 2029
    .local v51, "clazz":Ljava/lang/Class;
    const-string/jumbo v6, "vzwlbs"

    const-string/jumbo v7, "Loaded VzwLocationManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_48
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_49

    .line 2034
    .end local v51    # "clazz":Ljava/lang/Class;
    :goto_4d
    if-eqz v51, :cond_64

    .line 2035
    const/4 v6, 0x1

    :try_start_72
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v59

    .line 2037
    .local v59, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Landroid/os/IBinder;

    .line 2038
    .local v112, "ib":Landroid/os/IBinder;
    const-string/jumbo v6, "vzwlbs"

    const-string/jumbo v7, "Adding VzwLocationManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    const-string/jumbo v6, "vzwlbs"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IBinder : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v112

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    const-string/jumbo v6, "VZW_LOCATION_SERVICE"

    move-object/from16 v0, v112

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2041
    const-string/jumbo v6, "vzwlbs"

    const-string/jumbo v7, "Added VzwLocationManagerService to Service Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_49

    .line 2054
    .end local v39    # "apkServiceContext":Landroid/content/Context;
    .end local v59    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v112    # "ib":Landroid/os/IBinder;
    :cond_29
    :goto_4e
    :try_start_73
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SLocation Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    const-string/jumbo v6, "com.samsung.android.location.SLocationLoader"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v177

    .line 2056
    .local v177, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "getSLocationService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v10, v7, v11

    move-object/from16 v0, v177

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v109

    .line 2057
    .local v109, "getSLocationService":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, v109

    invoke-virtual {v0, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v176, v0

    .line 2058
    .local v176, "sLocation":Landroid/os/IBinder;
    const-string/jumbo v6, "sec_location"

    move-object/from16 v0, v176

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_4a

    .line 2063
    .end local v109    # "getSLocationService":Ljava/lang/reflect/Method;
    .end local v176    # "sLocation":Landroid/os/IBinder;
    .end local v177    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4f
    if-nez v79, :cond_2a

    if-eqz v82, :cond_65

    .line 2073
    :cond_2a
    :goto_50
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2075
    if-nez v79, :cond_2b

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2076
    const v7, 0x112004f

    .line 2075
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 2076
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v6, :cond_66

    .line 2082
    :cond_2b
    :goto_51
    const-string/jumbo v6, "StartAudioService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2083
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2084
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2086
    if-nez v79, :cond_2c

    .line 2087
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DockObserver;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2089
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.type.watch"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 2094
    :cond_2c
    const-string/jumbo v6, "StartWiredAccessoryManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2098
    :try_start_74
    new-instance v6, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v116

    invoke-direct {v6, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 2097
    move-object/from16 v0, v116

    invoke-virtual {v0, v6}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_4c

    .line 2102
    :goto_52
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2104
    if-nez v79, :cond_31

    .line 2105
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.midi"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 2107
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2110
    :cond_2d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 2111
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2112
    const-string/jumbo v7, "android.hardware.usb.accessory"

    .line 2111
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 2110
    if-eqz v6, :cond_2f

    .line 2114
    :cond_2e
    const-string/jumbo v6, "StartUsbService"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2115
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2116
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2119
    :cond_2f
    if-nez v83, :cond_30

    .line 2120
    const-string/jumbo v6, "StartSerialService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2123
    :try_start_75
    new-instance v185, Lcom/android/server/SerialService;

    move-object/from16 v0, v185

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_4d

    .line 2124
    .end local v184    # "serial":Lcom/android/server/SerialService;
    .local v185, "serial":Lcom/android/server/SerialService;
    :try_start_76
    const-string/jumbo v6, "serial"

    move-object/from16 v0, v185

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_7e

    move-object/from16 v184, v185

    .line 2128
    .end local v185    # "serial":Lcom/android/server/SerialService;
    :goto_53
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2132
    :cond_30
    const-string/jumbo v6, "StartHardwarePropertiesManagerService"

    .line 2131
    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2134
    :try_start_77
    new-instance v111, Lcom/android/server/HardwarePropertiesManagerService;

    move-object/from16 v0, v111

    invoke-direct {v0, v5}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_4e

    .line 2135
    .end local v110    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v111, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_78
    const-string/jumbo v6, "hardware_properties"

    move-object/from16 v0, v111

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_7d

    move-object/from16 v110, v111

    .line 2140
    .end local v111    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_54
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2146
    :cond_31
    :try_start_79
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KiesUsb Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    const-string/jumbo v6, "kiesusb"

    new-instance v7, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v7, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_4f

    .line 2155
    :goto_55
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2157
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2159
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2161
    if-nez v79, :cond_37

    .line 2162
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.backup"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 2163
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2166
    :cond_32
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.app_widgets"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 2167
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11200b1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 2166
    if-eqz v6, :cond_34

    .line 2168
    :cond_33
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2171
    :cond_34
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.voice_recognizers"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 2172
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2175
    :cond_35
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 2176
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Gesture Launcher Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2179
    :cond_36
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2180
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2183
    :cond_37
    const-string/jumbo v6, "ro.SecEDS.enable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 2184
    .local v36, "SecEDSEnable":Ljava/lang/String;
    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    const-string/jumbo v6, "false"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 2188
    :try_start_7a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Starting SecEDSEnable Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    const/16 v96, 0x0

    .line 2190
    .local v96, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "com.android.server.SecExternalDisplayService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v96

    .line 2191
    .local v96, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v96, :cond_67

    .line 2192
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "eds Service not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_50

    .line 2208
    .end local v96    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_38
    :goto_56
    const-string/jumbo v6, "StartDiskStatsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2210
    :try_start_7b
    const-string/jumbo v6, "diskstats"

    new-instance v7, Lcom/android/server/DiskStatsService;

    invoke-direct {v7, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_51

    .line 2214
    :goto_57
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2218
    :try_start_7c
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemDisplaySolution Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    const/16 v90, 0x0

    .line 2220
    .local v90, "dsClass":Ljava/lang/Class;
    const-string/jumbo v6, "com.samsung.android.displaysolution.SemDisplaySolutionManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v90

    .line 2221
    .local v90, "dsClass":Ljava/lang/Class;
    if-nez v90, :cond_68

    .line 2222
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemDisplaySolution Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7c} :catch_52

    .line 2234
    .end local v90    # "dsClass":Ljava/lang/Class;
    :goto_58
    :try_start_7d
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemAllAroundSensing Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    const/16 v37, 0x0

    .line 2236
    .local v37, "aasClass":Ljava/lang/Class;
    const-string/jumbo v6, "com.samsung.android.allaroundsensing.SemAllAroundSensingManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v37

    .line 2237
    .local v37, "aasClass":Ljava/lang/Class;
    if-nez v37, :cond_69

    .line 2238
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemAllAroundSensing Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_7d} :catch_53

    .line 2250
    .end local v37    # "aasClass":Ljava/lang/Class;
    :goto_59
    const-string/jumbo v6, "StartSpenGestureManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2252
    :try_start_7e
    const-string/jumbo v6, "spengestureservice"

    new-instance v7, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v220

    invoke-direct {v7, v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_54

    .line 2256
    :goto_5a
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2262
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.cocktailbar.CocktailBarManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2270
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.aod.AODManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2276
    :try_start_7f
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "VoIPInterfaceManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    const-string/jumbo v6, "voip"

    new-instance v7, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v7, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_7f} :catch_55

    .line 2283
    :goto_5b
    if-nez v81, :cond_39

    .line 2284
    const-string/jumbo v6, "StartSamplingProfilerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2290
    :try_start_80
    const-string/jumbo v6, "samplingprofiler"

    .line 2291
    new-instance v7, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v7, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 2290
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_56

    .line 2295
    :goto_5c
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2298
    :cond_39
    if-nez v77, :cond_3a

    if-eqz v78, :cond_6a

    .line 2317
    .end local v168    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_3a
    :goto_5d
    const-string/jumbo v6, "StartCommonTimeManagementService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2319
    :try_start_81
    new-instance v55, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v55

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_58

    .line 2320
    .end local v54    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v55, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_82
    const-string/jumbo v6, "commontime_management"

    move-object/from16 v0, v55

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_82} :catch_7b

    move-object/from16 v54, v55

    .line 2324
    .end local v55    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_5e
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2326
    if-nez v77, :cond_3b

    .line 2327
    const-string/jumbo v6, "CertBlacklister"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2329
    :try_start_83
    new-instance v42, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v42

    invoke-direct {v0, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_83} :catch_59

    .line 2333
    :goto_5f
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2336
    :cond_3b
    if-nez v79, :cond_3c

    .line 2338
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2341
    :cond_3c
    if-nez v79, :cond_3d

    .line 2352
    :cond_3d
    if-nez v79, :cond_3e

    .line 2353
    const-string/jumbo v6, "graphicsstats"

    .line 2354
    new-instance v7, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v7, v5}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 2353
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2357
    :cond_3e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.print"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 2358
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.print.PrintManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2361
    :cond_3f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2363
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2365
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.hdmi.cec"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 2366
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2369
    :cond_40
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.live_tv"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 2370
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2373
    :cond_41
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.picture_in_picture"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 2374
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2377
    :cond_42
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.leanback"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 2378
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2381
    :cond_43
    if-nez v79, :cond_46

    .line 2382
    const-string/jumbo v6, "StartMediaRouterService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2384
    :try_start_84
    new-instance v155, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v155

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_5a

    .line 2385
    .end local v154    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v155, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_85
    const-string/jumbo v6, "media_router"

    move-object/from16 v0, v155

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_85} :catch_7a

    move-object/from16 v154, v155

    .line 2389
    .end local v155    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_60
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2391
    if-nez v87, :cond_44

    .line 2392
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2395
    :cond_44
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.fingerprint"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 2396
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2399
    :cond_45
    const-string/jumbo v6, "StartBackgroundDexOptService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2401
    :try_start_86
    invoke-static {v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_86} :catch_5b

    .line 2405
    :goto_61
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2408
    :cond_46
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2410
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2414
    :try_start_87
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "BackgroundCompactionService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    invoke-static {v5}, Lcom/android/server/os/BackgroundCompactionService;->initBGC(Landroid/content/Context;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_87} :catch_5c

    .line 2422
    .end local v36    # "SecEDSEnable":Ljava/lang/String;
    .end local v170    # "notification":Landroid/app/INotificationManager;
    :goto_62
    if-nez v79, :cond_47

    if-eqz v76, :cond_6b

    .line 2426
    :cond_47
    :goto_63
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.type.watch"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 2432
    :cond_48
    invoke-virtual/range {v220 .. v220}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v178

    .line 2434
    .local v178, "safeMode":Z
    move/from16 v0, v178

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    .line 2436
    if-eqz v178, :cond_6c

    .line 2437
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 2439
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 2446
    :goto_64
    const-string/jumbo v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v147

    .line 2447
    .local v147, "mProductName":Ljava/lang/String;
    const-string/jumbo v6, "ktt"

    move-object/from16 v0, v147

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v6

    if-nez v6, :cond_49

    .line 2450
    :try_start_88
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KT UCA Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    const-string/jumbo v6, "ktuca"

    new-instance v7, Landroid/ktuca/KtUcaService;

    invoke-direct {v7, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_88} :catch_5d

    .line 2459
    :cond_49
    :goto_65
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v27

    .end local v27    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v27, Lcom/android/server/MmsServiceBroker;

    .line 2464
    .local v27, "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_89
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Mobile Payment Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    const-string/jumbo v6, "mobile_payment"

    new-instance v7, Lcom/android/server/spay/PaymentManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/spay/PaymentManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_89} :catch_5e

    .line 2474
    :goto_66
    :try_start_8a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "GameManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    new-instance v106, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/gamemanager.jar"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v106

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2476
    .local v106, "gamemanagerClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.samsung.android.game.GameManagerService"

    move-object/from16 v0, v106

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v105

    .line 2477
    .local v105, "gamemanagerClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v105

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v107

    .line 2478
    .local v107, "gamemanagerConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v107

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v108

    check-cast v108, Landroid/os/IBinder;

    .line 2479
    .local v108, "gamemanagerService":Landroid/os/IBinder;
    const-string/jumbo v6, "gamemanager"

    move-object/from16 v0, v108

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2480
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "GameManagerService loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8a} :catch_5f

    .line 2487
    .end local v105    # "gamemanagerClass":Ljava/lang/Class;
    .end local v106    # "gamemanagerClassLoader":Ldalvik/system/PathClassLoader;
    .end local v107    # "gamemanagerConstructor":Ljava/lang/reflect/Constructor;
    .end local v108    # "gamemanagerService":Landroid/os/IBinder;
    :goto_67
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "com.samsung.feature.hdr_capable"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 2489
    :try_start_8b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CodecSolutionService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    new-instance v53, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/codecsolution.jar"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v53

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2491
    .local v53, "clsLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.samsung.android.codecsolution.CodecSolutionManagerService"

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v52

    .line 2492
    .local v52, "cls":Ljava/lang/Class;
    if-nez v52, :cond_6d

    .line 2493
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CodecSolution Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8b} :catch_60

    .line 2507
    .end local v52    # "cls":Ljava/lang/Class;
    .end local v53    # "clsLoader":Ldalvik/system/PathClassLoader;
    :cond_4a
    :goto_68
    const-string/jumbo v6, "MakeVibratorServiceReady"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2509
    :try_start_8c
    invoke-virtual/range {v209 .. v209}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8c} :catch_61

    .line 2513
    :goto_69
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2515
    const-string/jumbo v6, "MakeLockSettingsServiceReady"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2516
    if-eqz v124, :cond_4b

    .line 2518
    :try_start_8d
    invoke-interface/range {v124 .. v124}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_8d} :catch_62

    .line 2523
    :cond_4b
    :goto_6a
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2526
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1e0

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2528
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2530
    if-eqz v99, :cond_6e

    .line 2532
    :try_start_8e
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 2533
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "enterprisePolicy systemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_8e} :catch_63

    .line 2543
    :goto_6b
    if-eqz v120, :cond_6f

    .line 2545
    :try_start_8f
    invoke-virtual/range {v120 .. v120}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->systemReady()V

    .line 2546
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "knoxcustomPolicy systemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_8f} :catch_64

    .line 2559
    :goto_6c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    if-eqz v6, :cond_4c

    .line 2560
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-virtual {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->systemReady()V

    .line 2561
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "credentialManagerService systemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    :cond_4c
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SecurityManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    :try_start_90
    const-string/jumbo v6, "SecurityManagerService"

    new-instance v7, Lcom/android/server/SecurityManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/SecurityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_90} :catch_65

    .line 2575
    :goto_6d
    const-string/jumbo v6, "MakeWindowManagerServiceReady"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2579
    if-eqz v97, :cond_4d

    .line 2581
    :try_start_91
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "calling onBootPhase for Wigig Services"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    invoke-virtual/range {v218 .. v218}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v217

    .line 2583
    .restart local v217    # "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v6, "onBootPhase"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v7, v11

    move-object/from16 v0, v217

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v125

    .line 2584
    .local v125, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    .line 2585
    const/16 v10, 0x1f4

    .line 2584
    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v125

    move-object/from16 v1, v218

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2587
    invoke-virtual/range {v219 .. v219}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v215

    .line 2588
    .restart local v215    # "wigigClass":Ljava/lang/Class;
    const-string/jumbo v6, "onBootPhase"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v7, v11

    move-object/from16 v0, v215

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v125

    .line 2589
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    .line 2590
    const/16 v10, 0x1f4

    .line 2589
    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v125

    move-object/from16 v1, v219

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_91} :catch_66

    .line 2597
    .end local v125    # "m":Ljava/lang/reflect/Method;
    .end local v215    # "wigigClass":Ljava/lang/Class;
    .end local v217    # "wigigP2pClass":Ljava/lang/Class;
    :cond_4d
    :goto_6e
    :try_start_92
    invoke-virtual/range {v220 .. v220}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_92} :catch_67

    .line 2601
    :goto_6f
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2603
    if-eqz v178, :cond_4e

    .line 2604
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 2610
    :cond_4e
    invoke-virtual/range {v220 .. v220}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v56

    .line 2611
    .local v56, "config":Landroid/content/res/Configuration;
    new-instance v156, Landroid/util/DisplayMetrics;

    invoke-direct/range {v156 .. v156}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2612
    .local v156, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v211

    check-cast v211, Landroid/view/WindowManager;

    .line 2613
    .local v211, "w":Landroid/view/WindowManager;
    invoke-interface/range {v211 .. v211}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v156

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2614
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v56

    move-object/from16 v1, v156

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2617
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v203

    .line 2618
    .local v203, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v203 .. v203}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v6

    if-eqz v6, :cond_4f

    .line 2619
    invoke-virtual/range {v203 .. v203}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 2622
    :cond_4f
    const-string/jumbo v6, "MakePowerManagerServiceReady"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2625
    :try_start_93
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V

    .line 2626
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_93} :catch_68

    .line 2630
    :goto_70
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2632
    const-string/jumbo v6, "MakePackageManagerServiceReady"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2634
    :try_start_94
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_94} :catch_69

    .line 2638
    :goto_71
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2640
    const-string/jumbo v6, "MakeDisplayManagerServiceReady"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2643
    :try_start_95
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v178

    invoke-virtual {v6, v0, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_95} :catch_6a

    .line 2647
    :goto_72
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2651
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_RIL_DisableSmartBonding"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 2667
    :goto_73
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_RIL_ConfigKeepRrcConnection"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v102

    .line 2668
    .local v102, "feature":Ljava/lang/String;
    if-eqz v102, :cond_50

    const-string/jumbo v6, "hongbao"

    move-object/from16 v0, v102

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 2670
    :try_start_96
    const-string/jumbo v6, "HongbaoModeServiceReady"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2671
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v46

    .line 2672
    .local v46, "cl":Ljava/lang/ClassLoader;
    const-string/jumbo v6, "com.samsung.android.hongbaomode.HongbaoModeService"

    const/4 v7, 0x1

    move-object/from16 v0, v46

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v47

    .line 2673
    .local v47, "class_HongbaoModeService":Ljava/lang/Class;
    const-string/jumbo v6, "HONGBAO_MODE_SERVICE"

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v103

    .line 2674
    .local v103, "field_HONGBAOMODE_SERVICE":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v60

    .line 2675
    .local v60, "constructor_HongbaoModeService":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x0

    move-object/from16 v0, v103

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v60

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2676
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_96} :catch_6c

    .line 2686
    .end local v46    # "cl":Ljava/lang/ClassLoader;
    .end local v47    # "class_HongbaoModeService":Ljava/lang/Class;
    .end local v60    # "constructor_HongbaoModeService":Ljava/lang/reflect/Constructor;
    .end local v103    # "field_HONGBAOMODE_SERVICE":Ljava/lang/reflect/Field;
    :cond_50
    :goto_74
    :try_start_97
    invoke-virtual/range {v182 .. v182}, Lcom/android/server/SdpManagerService;->systemReady()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_97} :catch_6d

    .line 2692
    :goto_75
    :try_start_98
    invoke-virtual/range {v180 .. v180}, Lcom/android/server/SdpLogService;->systemReady()V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_98} :catch_6e

    .line 2698
    :goto_76
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_RIL_SupportMptcp"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 2700
    :try_start_99
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Mptcp Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    new-instance v161, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/mptcpservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v161

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2702
    .local v161, "mptcpClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.samsung.android.mptcp.MptcpService"

    move-object/from16 v0, v161

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v160

    .line 2703
    .local v160, "mptcpClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v160

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v162

    .line 2704
    .local v162, "mptcpConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v162

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v163

    check-cast v163, Landroid/os/IBinder;

    .line 2707
    .local v163, "mptcpService":Landroid/os/IBinder;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "MPTCP loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_99} :catch_6f

    .line 2716
    .end local v160    # "mptcpClass":Ljava/lang/Class;
    .end local v161    # "mptcpClassLoader":Ldalvik/system/PathClassLoader;
    .end local v162    # "mptcpConstructor":Ljava/lang/reflect/Constructor;
    .end local v163    # "mptcpService":Landroid/os/IBinder;
    :cond_51
    :goto_77
    :try_start_9a
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/DLPManagerService;->systemReady()V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9a} :catch_70

    .line 2723
    :goto_78
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v208

    .line 2724
    .restart local v208    # "versionInfo":Landroid/os/Bundle;
    const-string/jumbo v6, "2.0"

    const-string/jumbo v7, "version"

    move-object/from16 v0, v208

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 2726
    :try_start_9b
    invoke-virtual/range {v146 .. v146}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9b} :catch_71

    .line 2731
    :goto_79
    :try_start_9c
    invoke-virtual/range {v138 .. v138}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->systemReady()V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9c} :catch_72

    .line 2736
    :goto_7a
    if-eqz v99, :cond_52

    .line 2738
    :try_start_9d
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "enterprisePolicy is not null"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    const-string/jumbo v6, "mum_container_policy"

    const/4 v7, 0x0

    move-object/from16 v0, v138

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2740
    const-string/jumbo v6, "mum_container_rcp_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v140

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_9d} :catch_73

    .line 2748
    :cond_52
    :goto_7b
    if-eqz v99, :cond_53

    .line 2750
    :try_start_9e
    new-instance v188, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;

    move-object/from16 v0, v188

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;-><init>(Landroid/content/Context;)V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_9e} :catch_74

    .line 2751
    .end local v187    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .local v188, "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    :try_start_9f
    const-string/jumbo v6, "smartcard_access_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v188

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2752
    const-string/jumbo v6, "smartcard_access_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v188

    invoke-static {v6, v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 2753
    new-instance v190, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    move-object/from16 v0, v190

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;-><init>(Landroid/content/Context;)V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_9f} :catch_75

    .line 2754
    .local v190, "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    :try_start_a0
    const-string/jumbo v6, "smartcard_browser_policy"

    .end local v189    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    const/4 v7, 0x1

    move-object/from16 v0, v190

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2755
    const-string/jumbo v6, "smartcard_browser_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v190

    invoke-static {v6, v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 2756
    new-instance v192, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;

    move-object/from16 v0, v192

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;-><init>(Landroid/content/Context;)V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a0} :catch_76

    .line 2757
    .local v192, "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    :try_start_a1
    const-string/jumbo v6, "smartcard_email_policy"

    .end local v191    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    const/4 v7, 0x1

    move-object/from16 v0, v192

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2758
    const-string/jumbo v6, "smartcard_email_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v192

    invoke-static {v6, v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 2759
    new-instance v194, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;

    move-object/from16 v0, v194

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;-><init>(Landroid/content/Context;)V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a1} :catch_77

    .line 2760
    .local v194, "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    :try_start_a2
    const-string/jumbo v6, "smartcard_lockscreen_policy"

    .end local v193    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    const/4 v7, 0x1

    move-object/from16 v0, v194

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2761
    const-string/jumbo v6, "smartcard_lockscreen_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v194

    invoke-static {v6, v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 2762
    new-instance v196, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;

    move-object/from16 v0, v196

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;-><init>(Landroid/content/Context;)V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a2} :catch_78

    .line 2763
    .local v196, "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    :try_start_a3
    const-string/jumbo v6, "smartcard_vpn_policy"

    .end local v195    # "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    const/4 v7, 0x1

    move-object/from16 v0, v196

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2764
    const-string/jumbo v6, "smartcard_vpn_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v196

    invoke-static {v6, v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a3} :catch_79

    move-object/from16 v193, v194

    .end local v194    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .local v193, "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    move-object/from16 v189, v190

    .end local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .local v189, "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    move-object/from16 v195, v196

    .end local v196    # "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    .local v195, "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    move-object/from16 v187, v188

    .end local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .local v187, "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    move-object/from16 v191, v192

    .line 2771
    .end local v187    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .end local v189    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .end local v192    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .end local v193    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .end local v195    # "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    :cond_53
    :goto_7c
    move-object v14, v9

    .line 2772
    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v8

    .line 2773
    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v4

    .line 2774
    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v57

    .line 2775
    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v166

    .line 2776
    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v18, v122

    .line 2777
    .local v18, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v19, v176

    .line 2778
    .local v19, "sLocationF":Landroid/os/IBinder;
    move-object/from16 v20, v66

    .line 2779
    .local v20, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v21, v168

    .line 2780
    .local v21, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v22, v54

    .line 1375
    .local v22, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    const/16 v23, 0x0

    .line 2782
    .local v23, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v24, v116

    .line 2783
    .local v24, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v25, v204

    .line 2784
    .local v25, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v26, v154

    .line 2785
    .local v26, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v157, v27

    .line 2788
    .local v157, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v29, v150

    .line 2792
    .local v29, "mateServiceF":Lcom/samsung/android/mateservice/MateService;
    move-object/from16 v30, v174

    .line 2796
    .local v30, "sAccessoryManagerF":Lcom/samsung/accessory/manager/SAccessoryManager;
    move-object/from16 v28, v68

    .line 2804
    .local v28, "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/SystemServer$2;

    move-object/from16 v11, p0

    move-object v12, v5

    invoke-direct/range {v10 .. v30}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/mateservice/MateService;Lcom/samsung/accessory/manager/SAccessoryManager;)V

    invoke-virtual {v6, v10}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 806
    return-void

    .line 924
    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v19    # "sLocationF":Landroid/os/IBinder;
    .end local v20    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v21    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v22    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v23    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v24    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v25    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v26    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v28    # "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    .end local v29    # "mateServiceF":Lcom/samsung/android/mateservice/MateService;
    .end local v30    # "sAccessoryManagerF":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v56    # "config":Landroid/content/res/Configuration;
    .end local v102    # "feature":Ljava/lang/String;
    .end local v147    # "mProductName":Ljava/lang/String;
    .end local v156    # "metrics":Landroid/util/DisplayMetrics;
    .end local v157    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v178    # "safeMode":Z
    .end local v203    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v211    # "w":Landroid/view/WindowManager;
    .local v8, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v9, "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v27, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v54    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v57    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v64, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v88    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v110    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v116, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v128, "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .restart local v130    # "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .local v132, "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .restart local v134    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    .restart local v136    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .restart local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .restart local v144    # "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    .restart local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v159    # "mountService":Landroid/os/storage/IMountService;
    .restart local v165    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v166    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v168    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v180    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v182    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v184    # "serial":Lcom/android/server/SerialService;
    .local v186, "serviceDiscovery":Lcom/android/server/NsdService;
    .local v187, "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .local v189, "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v191    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .local v193, "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .local v195, "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v209    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v213    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v218    # "wigigP2pService":Ljava/lang/Object;
    .restart local v219    # "wigigService":Ljava/lang/Object;
    .local v220, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v95

    .line 925
    .local v95, "e":Ljava/lang/Throwable;
    :try_start_a4
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting Persona Manager Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a4
    .catch Ljava/lang/RuntimeException; {:try_start_a4 .. :try_end_a4} :catch_1

    goto/16 :goto_0

    .line 1364
    .end local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .end local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .end local v208    # "versionInfo":Landroid/os/Bundle;
    :catch_1
    move-exception v94

    .local v94, "e":Ljava/lang/RuntimeException;
    move-object/from16 v204, v205

    .line 1365
    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v209    # "vibrator":Lcom/android/server/VibratorService;
    .end local v220    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_7d
    const-string/jumbo v6, "System"

    const-string/jumbo v7, "******************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const-string/jumbo v6, "System"

    const-string/jumbo v7, "************ Failure starting core service"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 934
    .end local v94    # "e":Ljava/lang/RuntimeException;
    .restart local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .restart local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .restart local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v208    # "versionInfo":Landroid/os/Bundle;
    .restart local v209    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v220    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_2
    move-exception v95

    .line 935
    .end local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_7e
    :try_start_a5
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting KnoxMUMContainerPolicy Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 943
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v95

    .line 944
    .end local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_7f
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting KnoxMUMRCPPolicyService"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 954
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v95

    .line 955
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add Reactive Service."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 965
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v95

    .line 966
    .restart local v95    # "e":Ljava/lang/Throwable;
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Throwable;->printStackTrace()V

    .line 967
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add VaultKeeper Service."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 970
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_54
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "VaultKeeper Service Disabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 979
    :catch_6
    move-exception v95

    .line 980
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add DeviceRootKeyService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 990
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v95

    .line 991
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add EngineeringModeService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    .line 1001
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v95

    .line 1002
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add SATService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/RuntimeException; {:try_start_a5 .. :try_end_a5} :catch_1

    goto/16 :goto_7

    .line 1018
    .end local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v73    # "dEncService":Lcom/android/server/DirEncryptService;
    :catch_9
    move-exception v95

    .line 1019
    .restart local v95    # "e":Ljava/lang/Throwable;
    :try_start_a6
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting DirEncryptService"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catch Ljava/lang/RuntimeException; {:try_start_a6 .. :try_end_a6} :catch_9a

    .line 1020
    const/16 v72, 0x0

    .restart local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    goto/16 :goto_8

    .line 1059
    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v73    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v209    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v210    # "vibrator":Lcom/android/server/VibratorService;
    :catch_a
    move-exception v93

    .line 1060
    .local v93, "e":Ljava/lang/Exception;
    :try_start_a7
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "ssrm.jar not found"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual/range {v93 .. v93}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 1364
    .end local v93    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v94

    .restart local v94    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v64, v65

    .end local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v64, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v204, v205

    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v209, v210

    .end local v210    # "vibrator":Lcom/android/server/VibratorService;
    .local v209, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_7d

    .line 1073
    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v94    # "e":Ljava/lang/RuntimeException;
    .end local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v209    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v210    # "vibrator":Lcom/android/server/VibratorService;
    :catch_c
    move-exception v93

    .line 1074
    .restart local v93    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "hqm.jar not found"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-virtual/range {v93 .. v93}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a7
    .catch Ljava/lang/RuntimeException; {:try_start_a7 .. :try_end_a7} :catch_b

    goto/16 :goto_a

    .line 1102
    .end local v93    # "e":Ljava/lang/Exception;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v212    # "watchdog":Lcom/android/server/Watchdog;
    :catch_d
    move-exception v93

    .line 1103
    .restart local v93    # "e":Ljava/lang/Exception;
    :try_start_a8
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting SemContextService"

    move-object/from16 v0, v93

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 1364
    .end local v93    # "e":Ljava/lang/Exception;
    .end local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v220    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_e
    move-exception v94

    .restart local v94    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v64, v65

    .end local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v204, v205

    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v116, v117

    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v116, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v209, v210

    .end local v210    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v209    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_7d

    .line 1131
    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v94    # "e":Ljava/lang/RuntimeException;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v209    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v206    # "timaEnabled":Z
    .restart local v210    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v220    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_f
    move-exception v95

    .line 1132
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting TimaService except PKM service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 1151
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v93

    .line 1152
    .restart local v93    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Unable to add TimaKesytore/FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-virtual/range {v93 .. v93}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d

    .line 1162
    .end local v93    # "e":Ljava/lang/Exception;
    :catch_11
    move-exception v95

    .line 1163
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting pkmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 1173
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v95

    .line 1174
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a8
    .catch Ljava/lang/RuntimeException; {:try_start_a8 .. :try_end_a8} :catch_e

    goto/16 :goto_f

    .line 1197
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v113    # "icccService":Lcom/android/server/IcccManagerService;
    .restart local v114    # "iccc_result":I
    .restart local v207    # "timaversion":Z
    :cond_55
    :try_start_a9
    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "trustboot write result: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v10, -0xdfffff

    const/4 v11, 0x1

    move-object/from16 v0, v113

    invoke-virtual {v0, v10, v11}, Lcom/android/server/IcccManagerService;->setSecureData(II)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_a9} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_a9 .. :try_end_a9} :catch_e

    goto/16 :goto_10

    .line 1199
    .end local v114    # "iccc_result":I
    :catch_13
    move-exception v93

    .line 1201
    .restart local v93    # "e":Ljava/lang/Exception;
    :try_start_aa
    const-string/jumbo v6, "icccManager"

    const-string/jumbo v7, "exception caught"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-virtual/range {v93 .. v93}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_aa} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_aa .. :try_end_aa} :catch_e

    goto/16 :goto_10

    .line 1213
    .end local v93    # "e":Ljava/lang/Exception;
    .end local v113    # "icccService":Lcom/android/server/IcccManagerService;
    .end local v207    # "timaversion":Z
    :catch_14
    move-exception v93

    .line 1214
    .restart local v93    # "e":Ljava/lang/Exception;
    :try_start_ab
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Unable to add TimaKesytore/FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    invoke-virtual/range {v93 .. v93}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11

    .line 1226
    .end local v93    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v95

    .line 1227
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure adding UniversalCredentialManagerService"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 1233
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v95

    .line 1234
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure adding CredentialManagerService"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 1245
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v95

    .line 1246
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CEP is not enabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 1252
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v95

    .line 1253
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting CEP Proxy Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 1260
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v95

    .line 1261
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting Email Keystore Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .line 1265
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_56
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_17

    .line 1266
    :cond_57
    const/4 v6, 0x1

    goto/16 :goto_18

    .line 1290
    .local v220, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_1a
    move-exception v95

    .line 1291
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting BarBeam Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .line 1303
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v95

    .line 1304
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting MultiWindow Manager Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 1322
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_58
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_59

    .line 1323
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Bluetooth Service (factory test)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 1324
    :cond_59
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1325
    const-string/jumbo v7, "android.hardware.bluetooth"

    .line 1324
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5a

    .line 1326
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 1327
    :cond_5a
    if-eqz v74, :cond_5b

    .line 1328
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Bluetooth Service disabled by config"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 1330
    :cond_5b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Bluetooth Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/BluetoothService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1335
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Bluetooth Secure Mode Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const-string/jumbo v6, "bluetooth_secure_mode_manager"

    .line 1337
    new-instance v7, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v7, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    .line 1336
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_1b

    .line 1356
    :catch_1c
    move-exception v95

    .line 1357
    .end local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_80
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting RCP Manager Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ab
    .catch Ljava/lang/RuntimeException; {:try_start_ab .. :try_end_ab} :catch_e

    goto/16 :goto_1c

    .line 1410
    .end local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v206    # "timaEnabled":Z
    .end local v208    # "versionInfo":Landroid/os/Bundle;
    .end local v210    # "vibrator":Lcom/android/server/VibratorService;
    .end local v212    # "watchdog":Lcom/android/server/Watchdog;
    .end local v220    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v66    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v99, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v120    # "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .restart local v122    # "location":Lcom/android/server/LocationManagerService;
    .restart local v124    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v126    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .local v142, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .restart local v154    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v170, "notification":Landroid/app/INotificationManager;
    .restart local v174    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .local v176, "sLocation":Landroid/os/IBinder;
    .restart local v197    # "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    .restart local v200    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_1d
    move-exception v95

    .line 1411
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 1418
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v95

    .line 1419
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 1433
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v95

    .line 1434
    .end local v174    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_81
    const-string/jumbo v6, "starting SAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 1444
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v95

    .line 1445
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Failure starting FM Radio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 1457
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v152    # "mdnieClass":Ljava/lang/Class;
    :cond_5c
    const/4 v6, 0x1

    :try_start_ac
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v152

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v59

    .line 1458
    .restart local v59    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v153

    check-cast v153, Landroid/os/IBinder;

    .line 1459
    .local v153, "mdnieService":Landroid/os/IBinder;
    const-string/jumbo v6, "mDNIe"

    move-object/from16 v0, v153

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_ac} :catch_21

    goto/16 :goto_22

    .line 1461
    .end local v59    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v152    # "mdnieClass":Ljava/lang/Class;
    .end local v153    # "mdnieService":Landroid/os/IBinder;
    :catch_21
    move-exception v95

    .line 1462
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Failed To Start Mdnie Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1473
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v68    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v70    # "cryptState":Ljava/lang/String;
    :cond_5d
    if-nez v79, :cond_c

    .line 1474
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v172

    .line 1475
    .local v172, "packageMgr":Landroid/content/pm/PackageManager;
    const-string/jumbo v6, "com.sec.feature.cover.flip"

    move-object/from16 v0, v172

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 1476
    const-string/jumbo v6, "com.sec.feature.cover.sview"

    move-object/from16 v0, v172

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 1475
    if-eqz v6, :cond_c

    .line 1478
    :cond_5e
    :try_start_ad
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CoverManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    new-instance v69, Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, v69

    move-object/from16 v1, v220

    move-object/from16 v2, v116

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_ad} :catch_22

    .line 1480
    .end local v68    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .local v69, "coverService":Lcom/android/server/cover/CoverManagerService;
    :try_start_ae
    const-string/jumbo v6, "cover"

    move-object/from16 v0, v69

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_ae} :catch_95

    move-object/from16 v68, v69

    .end local v69    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .local v68, "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_23

    .line 1481
    .local v68, "coverService":Lcom/android/server/cover/CoverManagerService;
    :catch_22
    move-exception v95

    .line 1482
    .end local v68    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_82
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting CoverManager Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    .line 1500
    .end local v70    # "cryptState":Ljava/lang/String;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v172    # "packageMgr":Landroid/content/pm/PackageManager;
    .restart local v150    # "mateService":Lcom/samsung/android/mateservice/MateService;
    :catch_23
    move-exception v95

    .line 1501
    .end local v150    # "mateService":Lcom/samsung/android/mateservice/MateService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_83
    const-string/jumbo v6, "starting Mate Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1513
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_5f
    :try_start_af
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1515
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 1514
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_af} :catch_24

    move-result-object v159

    .local v159, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_25

    .line 1516
    .local v159, "mountService":Landroid/os/storage/IMountService;
    :catch_24
    move-exception v95

    .line 1517
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1527
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v159    # "mountService":Landroid/os/storage/IMountService;
    :catch_25
    move-exception v95

    .line 1528
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1547
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v93

    .line 1548
    .restart local v93    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting MotionRecognitionService"

    move-object/from16 v0, v93

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 1560
    .end local v93    # "e":Ljava/lang/Exception;
    :catch_27
    move-exception v95

    .line 1561
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "update packages"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1591
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v95

    .line 1592
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1613
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v124    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_29
    move-exception v95

    .line 1614
    .end local v136    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_84
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting Harmony EAS service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 1624
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v95

    .line 1625
    .end local v182    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_85
    const-string/jumbo v6, "unable to start SdpManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1632
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v95

    .line 1633
    .end local v180    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_86
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting SdpLogService Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 1642
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v95

    .line 1643
    .end local v88    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_87
    const-string/jumbo v6, "unable to start DLPManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1654
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_2d
    move-exception v95

    .line 1655
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 1668
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v95

    .line 1669
    .end local v120    # "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_88
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Fail KnoxCustom Policy."

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 1690
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v95

    .line 1691
    .end local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .end local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .end local v134    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_89
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure adding KNOX SSO services"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 1704
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v95

    .line 1705
    .end local v130    # "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_8a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure adding KNOX Shared Device service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 1719
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v95

    .line 1720
    .end local v144    # "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_8b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure adding KNOX OTP service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 1730
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v95

    .line 1731
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure registering EnterpriseBillingPolicy service with EDM service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 1740
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v100

    .line 1741
    .end local v197    # "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    .local v100, "exception":Ljava/lang/Exception;
    :goto_8c
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure registering SPDControlPolicy service with EDM service"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .line 1746
    .end local v100    # "exception":Ljava/lang/Exception;
    :catch_34
    move-exception v95

    .line 1747
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    .line 1753
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v95

    .line 1754
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Registration of denial service failed"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    .line 1763
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v95

    .line 1764
    .end local v200    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_8d
    const-string/jumbo v6, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1774
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v95

    .line 1775
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1783
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_60
    :try_start_b0
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemClipboardService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    const-string/jumbo v6, "semclipboard"

    .line 1785
    new-instance v7, Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {v7, v5}, Lcom/android/server/clipboardex/ClipboardExService;-><init>(Landroid/content/Context;)V

    .line 1784
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_b0} :catch_38

    goto/16 :goto_3a

    .line 1786
    :catch_38
    move-exception v95

    .line 1787
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SemClipboardService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1799
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_39
    move-exception v95

    .line 1800
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Absolute Persistence Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 1810
    .end local v9    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v95

    .line 1811
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 1828
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v95

    .line 1829
    .end local v126    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .end local v142    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_8e
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting EnterprisePremiumVpnService and KnoxVpnEngineService"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .line 1835
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_61
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_3e

    .line 1843
    :catch_3c
    move-exception v95

    .line 1844
    .end local v166    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_8f
    const-string/jumbo v6, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 1852
    .end local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_3d
    move-exception v95

    .line 1853
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1864
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_3e
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v4, v165

    .line 1865
    .end local v165    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_90
    const-string/jumbo v6, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 1872
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_62
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Wi-Fi NAN Service (NAN support Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    .line 1907
    .end local v218    # "wigigP2pService":Ljava/lang/Object;
    .end local v219    # "wigigService":Ljava/lang/Object;
    :catch_3f
    move-exception v95

    .line 1908
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WigigService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1924
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_40
    move-exception v95

    .line 1925
    .end local v57    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_91
    const-string/jumbo v6, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1934
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v186    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_41
    move-exception v95

    .line 1935
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1947
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_42
    move-exception v95

    .line 1948
    .end local v213    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_92
    const-string/jumbo v6, "starting Wi-Fi Offload Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1958
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_43
    move-exception v95

    .line 1959
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1973
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_44
    move-exception v95

    .line 1974
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1984
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_63
    const-string/jumbo v6, "WaitForAsecScan"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1986
    :try_start_b1
    invoke-interface/range {v159 .. v159}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_b1} :catch_45

    .line 1989
    :goto_93
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4a

    .line 1987
    :catch_45
    move-exception v115

    .local v115, "ignored":Landroid/os/RemoteException;
    goto :goto_93

    .line 2004
    .end local v115    # "ignored":Landroid/os/RemoteException;
    .local v170, "notification":Landroid/app/INotificationManager;
    :catch_46
    move-exception v95

    .line 2005
    .end local v122    # "location":Lcom/android/server/LocationManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_94
    const-string/jumbo v6, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 2013
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_47
    move-exception v95

    .line 2014
    .end local v66    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_95
    const-string/jumbo v6, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 2030
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v39    # "apkServiceContext":Landroid/content/Context;
    :catch_48
    move-exception v93

    .line 2031
    .restart local v93    # "e":Ljava/lang/Exception;
    :try_start_b2
    const-string/jumbo v6, "vzwlbs"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception while loading the class "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v93

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_b2} :catch_49

    goto/16 :goto_4d

    .line 2045
    .end local v39    # "apkServiceContext":Landroid/content/Context;
    .end local v93    # "e":Ljava/lang/Exception;
    :catch_49
    move-exception v95

    .line 2046
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "vzwlbs"

    const-string/jumbo v7, "Failure starting VZW Location Manager"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4e

    .line 2043
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v39    # "apkServiceContext":Landroid/content/Context;
    :cond_64
    :try_start_b3
    const-string/jumbo v6, "vzwlbs"

    const-string/jumbo v7, "Failure starting VZW Location Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_b3} :catch_49

    goto/16 :goto_4e

    .line 2059
    .end local v39    # "apkServiceContext":Landroid/content/Context;
    .end local v176    # "sLocation":Landroid/os/IBinder;
    :catch_4a
    move-exception v95

    .line 2060
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v95 .. v95}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4f

    .line 2064
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_65
    const-string/jumbo v6, "StartSearchManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2066
    :try_start_b4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_b4} :catch_4b

    .line 2070
    :goto_96
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_50

    .line 2067
    :catch_4b
    move-exception v95

    .line 2068
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_96

    .line 2077
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_66
    const-string/jumbo v6, "StartWallpaperManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2078
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2079
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_51

    .line 2099
    :catch_4c
    move-exception v95

    .line 2100
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 2125
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_4d
    move-exception v95

    .line 2126
    .end local v184    # "serial":Lcom/android/server/SerialService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_97
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting SerialService"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_53

    .line 2137
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_4e
    move-exception v95

    .line 2138
    .end local v110    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_98
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting HardwarePropertiesManagerService"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_54

    .line 2148
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_4f
    move-exception v95

    .line 2149
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    .line 2196
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v36    # "SecEDSEnable":Ljava/lang/String;
    .restart local v96    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_67
    :try_start_b5
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "edsclass Service exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v40, v0

    .line 2198
    .local v40, "arg":[Ljava/lang/Class;
    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v40, v7

    .line 2199
    move-object/from16 v0, v96

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v59

    .line 2200
    .restart local v59    # "constructor":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "SecExternalDisplayService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_b5} :catch_50

    goto/16 :goto_56

    .line 2202
    .end local v40    # "arg":[Ljava/lang/Class;
    .end local v59    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v96    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_50
    move-exception v95

    .line 2203
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting eds Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_56

    .line 2211
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_51
    move-exception v95

    .line 2212
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57

    .line 2224
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v90    # "dsClass":Ljava/lang/Class;
    :cond_68
    const/4 v6, 0x1

    :try_start_b6
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v90

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v59

    .line 2225
    .restart local v59    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Landroid/os/IBinder;

    .line 2226
    .local v91, "dsService":Landroid/os/IBinder;
    const-string/jumbo v6, "DisplaySolution"

    move-object/from16 v0, v91

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_b6} :catch_52

    goto/16 :goto_58

    .line 2228
    .end local v59    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v90    # "dsClass":Ljava/lang/Class;
    .end local v91    # "dsService":Landroid/os/IBinder;
    :catch_52
    move-exception v95

    .line 2229
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Failed To Start SemDisplaySolution Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58

    .line 2240
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v37    # "aasClass":Ljava/lang/Class;
    :cond_69
    const/4 v6, 0x1

    :try_start_b7
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v59

    .line 2241
    .restart local v59    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/IBinder;

    .line 2242
    .local v38, "aasService":Landroid/os/IBinder;
    const-string/jumbo v6, "AAS"

    move-object/from16 v0, v38

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_b7} :catch_53

    goto/16 :goto_59

    .line 2244
    .end local v37    # "aasClass":Ljava/lang/Class;
    .end local v38    # "aasService":Landroid/os/IBinder;
    .end local v59    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_53
    move-exception v95

    .line 2245
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Failed To Start SemAllAroundSensing Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_59

    .line 2253
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_54
    move-exception v95

    .line 2254
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SpenGestureManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5a

    .line 2278
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_55
    move-exception v95

    .line 2279
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    .line 2292
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_56
    move-exception v95

    .line 2293
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5c

    .line 2299
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_6a
    const-string/jumbo v6, "StartNetworkTimeUpdateService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2301
    :try_start_b8
    new-instance v169, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v169

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_b8} :catch_57

    .line 2302
    .end local v168    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v169, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_b9
    const-string/jumbo v6, "network_time_update_service"

    move-object/from16 v0, v169

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_b9} :catch_7c

    move-object/from16 v168, v169

    .line 2306
    .end local v169    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_99
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_5d

    .line 2303
    .restart local v168    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_57
    move-exception v95

    .line 2304
    .end local v168    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_9a
    const-string/jumbo v6, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_99

    .line 2321
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_58
    move-exception v95

    .line 2322
    .end local v54    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_9b
    const-string/jumbo v6, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5e

    .line 2330
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_59
    move-exception v95

    .line 2331
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5f

    .line 2386
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_5a
    move-exception v95

    .line 2387
    .end local v154    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_9c
    const-string/jumbo v6, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_60

    .line 2402
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_5b
    move-exception v95

    .line 2403
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_61

    .line 2416
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_5c
    move-exception v95

    .line 2417
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting BackgroundCompactionService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_62

    .line 2423
    .end local v36    # "SecEDSEnable":Ljava/lang/String;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v170    # "notification":Landroid/app/INotificationManager;
    :cond_6b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_63

    .line 2442
    .restart local v178    # "safeMode":Z
    :cond_6c
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_64

    .line 2452
    .restart local v147    # "mProductName":Ljava/lang/String;
    :catch_5d
    move-exception v95

    .line 2453
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting KT UCA Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_65

    .line 2466
    .end local v95    # "e":Ljava/lang/Throwable;
    .local v27, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_5e
    move-exception v95

    .line 2467
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting Payment Manager Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_66

    .line 2481
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_5f
    move-exception v95

    .line 2482
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add GameManagerService."

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_67

    .line 2495
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v52    # "cls":Ljava/lang/Class;
    .restart local v53    # "clsLoader":Ldalvik/system/PathClassLoader;
    :cond_6d
    const/4 v6, 0x1

    :try_start_ba
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v59

    .line 2496
    .restart local v59    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v202

    check-cast v202, Landroid/os/IBinder;

    .line 2497
    .local v202, "svc":Landroid/os/IBinder;
    const-string/jumbo v6, "CodecSolution"

    move-object/from16 v0, v202

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2498
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CodecSolution Service loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_ba} :catch_60

    goto/16 :goto_68

    .line 2500
    .end local v52    # "cls":Ljava/lang/Class;
    .end local v53    # "clsLoader":Ldalvik/system/PathClassLoader;
    .end local v59    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v202    # "svc":Landroid/os/IBinder;
    :catch_60
    move-exception v95

    .line 2501
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed To Start CodecSolution Service "

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_68

    .line 2510
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_61
    move-exception v95

    .line 2511
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_69

    .line 2519
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_62
    move-exception v95

    .line 2520
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a

    .line 2534
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_63
    move-exception v95

    .line 2535
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making enterprise manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6b

    .line 2538
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_6e
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "enterprisePolicy cannot ready because null reference"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 2547
    :catch_64
    move-exception v95

    .line 2548
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making knoxcustom manager service ready "

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6c

    .line 2551
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_6f
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "knoxCustomPolicy can\'t be ready due to a null pointer reference."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6c

    .line 2570
    :catch_65
    move-exception v95

    .line 2571
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add SecurityManagerService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6d

    .line 2591
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_66
    move-exception v95

    .line 2592
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Wigig services ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6e

    .line 2598
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_67
    move-exception v95

    .line 2599
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6f

    .line 2627
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v56    # "config":Landroid/content/res/Configuration;
    .restart local v156    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v203    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v211    # "w":Landroid/view/WindowManager;
    :catch_68
    move-exception v95

    .line 2628
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_70

    .line 2635
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_69
    move-exception v95

    .line 2636
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_71

    .line 2644
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_6a
    move-exception v95

    .line 2645
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_72

    .line 2653
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_70
    :try_start_bb
    const-string/jumbo v6, "SmartBondingServiceReady"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2654
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v46

    .line 2655
    .restart local v46    # "cl":Ljava/lang/ClassLoader;
    const-string/jumbo v6, "com.samsung.android.smartbonding.SmartBondingService"

    const/4 v7, 0x1

    move-object/from16 v0, v46

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v50

    .line 2656
    .local v50, "class_SmartBondingService":Ljava/lang/Class;
    const-string/jumbo v6, "SMARTBONDING_SERVICE"

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v104

    .line 2657
    .local v104, "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v63

    .line 2658
    .local v63, "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x0

    move-object/from16 v0, v104

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v63

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2659
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_bb} :catch_6b

    goto/16 :goto_73

    .line 2660
    .end local v46    # "cl":Ljava/lang/ClassLoader;
    .end local v50    # "class_SmartBondingService":Ljava/lang/Class;
    .end local v63    # "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    .end local v104    # "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    :catch_6b
    move-exception v95

    .line 2661
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SmartBondingService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_73

    .line 2677
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v102    # "feature":Ljava/lang/String;
    :catch_6c
    move-exception v95

    .line 2678
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting HongbaoModeService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_74

    .line 2687
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_6d
    move-exception v95

    .line 2688
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Sdp manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_75

    .line 2693
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_6e
    move-exception v95

    .line 2694
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Sdp Log Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_76

    .line 2708
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_6f
    move-exception v95

    .line 2709
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "failed to start MptcpService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_77

    .line 2717
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_70
    move-exception v95

    .line 2718
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making EnterpriserRightsManagerService ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_78

    .line 2727
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v208    # "versionInfo":Landroid/os/Bundle;
    :catch_71
    move-exception v95

    .line 2728
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_79

    .line 2732
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_72
    move-exception v95

    .line 2733
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making KnoxMUMContainerPolicy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7a

    .line 2741
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_73
    move-exception v95

    .line 2742
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making enterprise manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7b

    .line 2765
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_74
    move-exception v95

    .line 2766
    .end local v187    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .end local v189    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .end local v191    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .end local v193    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .end local v195    # "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_9d
    const-string/jumbo v6, "making enterprise manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7c

    .line 2765
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v189    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v191    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .restart local v193    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .restart local v195    # "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    :catch_75
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v187, v188

    .end local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .local v187, "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    goto :goto_9d

    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v187    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .end local v189    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    :catch_76
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v189, v190

    .end local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .local v189, "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    move-object/from16 v187, v188

    .end local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v187    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    goto :goto_9d

    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v187    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .end local v189    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .end local v191    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .restart local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v192    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    :catch_77
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v189, v190

    .end local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v189    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    move-object/from16 v187, v188

    .end local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v187    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    move-object/from16 v191, v192

    .end local v192    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .local v191, "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    goto :goto_9d

    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v187    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .end local v189    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .end local v191    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .end local v193    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .restart local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v192    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .restart local v194    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    :catch_78
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v193, v194

    .end local v194    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .local v193, "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    move-object/from16 v189, v190

    .end local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v189    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    move-object/from16 v187, v188

    .end local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v187    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    move-object/from16 v191, v192

    .end local v192    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .restart local v191    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    goto :goto_9d

    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v187    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .end local v189    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .end local v191    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .end local v193    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .end local v195    # "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    .restart local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v192    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .restart local v194    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .restart local v196    # "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    :catch_79
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v193, v194

    .end local v194    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .restart local v193    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    move-object/from16 v189, v190

    .end local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v189    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    move-object/from16 v195, v196

    .end local v196    # "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    .local v195, "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    move-object/from16 v187, v188

    .end local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v187    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    move-object/from16 v191, v192

    .end local v192    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .restart local v191    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    goto :goto_9d

    .line 2386
    .end local v56    # "config":Landroid/content/res/Configuration;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v102    # "feature":Ljava/lang/String;
    .end local v147    # "mProductName":Ljava/lang/String;
    .end local v156    # "metrics":Landroid/util/DisplayMetrics;
    .end local v178    # "safeMode":Z
    .end local v203    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v208    # "versionInfo":Landroid/os/Bundle;
    .end local v211    # "w":Landroid/view/WindowManager;
    .local v27, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v36    # "SecEDSEnable":Ljava/lang/String;
    .restart local v155    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v170    # "notification":Landroid/app/INotificationManager;
    .local v187, "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .local v189, "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .local v191, "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .local v193, "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .local v195, "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    :catch_7a
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v154, v155

    .end local v155    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v154, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_9c

    .line 2321
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v55    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v154, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_7b
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v54, v55

    .end local v55    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v54, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_9b

    .line 2303
    .end local v95    # "e":Ljava/lang/Throwable;
    .local v54, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v169    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_7c
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v168, v169

    .end local v169    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v168, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_9a

    .line 2137
    .end local v36    # "SecEDSEnable":Ljava/lang/String;
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v111    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v168, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_7d
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v110, v111

    .end local v111    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v110, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    goto/16 :goto_98

    .line 2125
    .end local v95    # "e":Ljava/lang/Throwable;
    .local v110, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v185    # "serial":Lcom/android/server/SerialService;
    :catch_7e
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v184, v185

    .end local v185    # "serial":Lcom/android/server/SerialService;
    .local v184, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_97

    .line 2013
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v67    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v176    # "sLocation":Landroid/os/IBinder;
    .local v184, "serial":Lcom/android/server/SerialService;
    :catch_7f
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v66, v67

    .end local v67    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v66, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_95

    .line 2004
    .end local v95    # "e":Ljava/lang/Throwable;
    .local v66, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v123    # "location":Lcom/android/server/LocationManagerService;
    :catch_80
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v122, v123

    .end local v123    # "location":Lcom/android/server/LocationManagerService;
    .local v122, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_94

    .line 1947
    .end local v95    # "e":Ljava/lang/Throwable;
    .local v122, "location":Lcom/android/server/LocationManagerService;
    .local v170, "notification":Landroid/app/INotificationManager;
    .restart local v214    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :catch_81
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v213, v214

    .end local v214    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .local v213, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    goto/16 :goto_92

    .line 1924
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v58    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v186    # "serviceDiscovery":Lcom/android/server/NsdService;
    .local v213, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :catch_82
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v57, v58

    .end local v58    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v57, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_91

    .line 1864
    .end local v95    # "e":Ljava/lang/Throwable;
    .local v57, "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v218    # "wigigP2pService":Ljava/lang/Object;
    .restart local v219    # "wigigService":Ljava/lang/Object;
    :catch_83
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    goto/16 :goto_90

    .line 1843
    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v165    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v167    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_84
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v166, v167

    .end local v167    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v166, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_8f

    .line 1828
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v127    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .restart local v142    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .local v166, "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_85
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v126, v127

    .end local v127    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .local v126, "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    goto/16 :goto_8e

    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v126    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .end local v142    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .restart local v127    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .restart local v143    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    :catch_86
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v142, v143

    .end local v143    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .local v142, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    move-object/from16 v126, v127

    .end local v127    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .restart local v126    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    goto/16 :goto_8e

    .line 1763
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v9    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v126, "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .local v142, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .restart local v201    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_87
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v200, v201

    .end local v201    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v200, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_8d

    .line 1740
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v198    # "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    .local v200, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_88
    move-exception v100

    .restart local v100    # "exception":Ljava/lang/Exception;
    move-object/from16 v197, v198

    .end local v198    # "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    .local v197, "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    goto/16 :goto_8c

    .line 1719
    .end local v100    # "exception":Ljava/lang/Exception;
    .restart local v145    # "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    .local v197, "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    :catch_89
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v144, v145

    .end local v145    # "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    .local v144, "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    goto/16 :goto_8b

    .line 1704
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v131    # "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .local v144, "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    :catch_8a
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v130, v131

    .end local v131    # "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .local v130, "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    goto/16 :goto_8a

    .line 1690
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v129    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .local v130, "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .restart local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .restart local v134    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    :catch_8b
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v128, v129

    .end local v129    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .local v128, "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    goto/16 :goto_89

    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .end local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .restart local v129    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .restart local v133    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    :catch_8c
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v128, v129

    .end local v129    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .restart local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    move-object/from16 v132, v133

    .end local v133    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .local v132, "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    goto/16 :goto_89

    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .end local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .end local v134    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    .restart local v129    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .restart local v133    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .restart local v135    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    :catch_8d
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v128, v129

    .end local v129    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .restart local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    move-object/from16 v132, v133

    .end local v133    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .restart local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    move-object/from16 v134, v135

    .end local v135    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    .local v134, "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    goto/16 :goto_89

    .line 1668
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v121    # "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .local v128, "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .local v132, "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .local v134, "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    :catch_8e
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v120, v121

    .end local v121    # "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .local v120, "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    goto/16 :goto_88

    .line 1642
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v89    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v120, "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    :catch_8f
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v88, v89

    .end local v89    # "dlpService":Lcom/android/server/DLPManagerService;
    .local v88, "dlpService":Lcom/android/server/DLPManagerService;
    goto/16 :goto_87

    .line 1632
    .end local v95    # "e":Ljava/lang/Throwable;
    .local v88, "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v181    # "sdpLogService":Lcom/android/server/SdpLogService;
    :catch_90
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v180, v181

    .end local v181    # "sdpLogService":Lcom/android/server/SdpLogService;
    .local v180, "sdpLogService":Lcom/android/server/SdpLogService;
    goto/16 :goto_86

    .line 1624
    .end local v95    # "e":Ljava/lang/Throwable;
    .local v180, "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v183    # "sdpService":Lcom/android/server/SdpManagerService;
    :catch_91
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v182, v183

    .end local v183    # "sdpService":Lcom/android/server/SdpManagerService;
    .local v182, "sdpService":Lcom/android/server/SdpManagerService;
    goto/16 :goto_85

    .line 1613
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v137    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v182, "sdpService":Lcom/android/server/SdpManagerService;
    :catch_92
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v136, v137

    .end local v137    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v136, "mHMS":Lcom/android/server/HarmonyEASService;
    goto/16 :goto_84

    .line 1581
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v124    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v136, "mHMS":Lcom/android/server/HarmonyEASService;
    :catch_93
    move-exception v92

    .local v92, "e":Landroid/os/RemoteException;
    goto/16 :goto_29

    .line 1500
    .end local v92    # "e":Landroid/os/RemoteException;
    .restart local v151    # "mateService":Lcom/samsung/android/mateservice/MateService;
    .restart local v159    # "mountService":Landroid/os/storage/IMountService;
    .restart local v173    # "pm":Landroid/content/pm/PackageManager;
    :catch_94
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v150, v151

    .end local v151    # "mateService":Lcom/samsung/android/mateservice/MateService;
    .local v150, "mateService":Lcom/samsung/android/mateservice/MateService;
    goto/16 :goto_83

    .line 1481
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v150    # "mateService":Lcom/samsung/android/mateservice/MateService;
    .end local v173    # "pm":Landroid/content/pm/PackageManager;
    .restart local v69    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v70    # "cryptState":Ljava/lang/String;
    .restart local v172    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_95
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v68, v69

    .end local v69    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .local v68, "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_82

    .line 1433
    .end local v68    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v70    # "cryptState":Ljava/lang/String;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v172    # "packageMgr":Landroid/content/pm/PackageManager;
    .restart local v173    # "pm":Landroid/content/pm/PackageManager;
    .restart local v175    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :catch_96
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v174, v175

    .end local v175    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .local v174, "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    goto/16 :goto_81

    .line 1364
    .end local v66    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v120    # "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .end local v122    # "location":Lcom/android/server/LocationManagerService;
    .end local v124    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v126    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .end local v142    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .end local v154    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v170    # "notification":Landroid/app/INotificationManager;
    .end local v173    # "pm":Landroid/content/pm/PackageManager;
    .end local v174    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v176    # "sLocation":Landroid/os/IBinder;
    .end local v197    # "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    .end local v200    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v64, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v116, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .restart local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .local v146, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    .restart local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .local v204, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v209, "vibrator":Lcom/android/server/VibratorService;
    .local v220, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_97
    move-exception v94

    .restart local v94    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_7d

    .end local v94    # "e":Ljava/lang/RuntimeException;
    .end local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .end local v146    # "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    .end local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v139    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v208    # "versionInfo":Landroid/os/Bundle;
    :catch_98
    move-exception v94

    .restart local v94    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v138, v139

    .end local v139    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .local v138, "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    move-object/from16 v204, v205

    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v204, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_7d

    .end local v94    # "e":Ljava/lang/RuntimeException;
    .end local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .end local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .end local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v141    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_99
    move-exception v94

    .restart local v94    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v140, v141

    .end local v141    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .local v140, "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    move-object/from16 v204, v205

    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_7d

    .end local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v94    # "e":Ljava/lang/RuntimeException;
    .end local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .end local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v73    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_9a
    move-exception v94

    .restart local v94    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v72, v73

    .end local v73    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v72, "dEncService":Lcom/android/server/DirEncryptService;
    move-object/from16 v204, v205

    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_7d

    .end local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v94    # "e":Ljava/lang/RuntimeException;
    .end local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v209    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v210    # "vibrator":Lcom/android/server/VibratorService;
    :catch_9b
    move-exception v94

    .restart local v94    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v204, v205

    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v209, v210

    .end local v210    # "vibrator":Lcom/android/server/VibratorService;
    .local v209, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_7d

    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v94    # "e":Ljava/lang/RuntimeException;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v209    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v149    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v206    # "timaEnabled":Z
    .restart local v210    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v212    # "watchdog":Lcom/android/server/Watchdog;
    .local v220, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_9c
    move-exception v94

    .restart local v94    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v148, v149

    .end local v149    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .local v148, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    move-object/from16 v64, v65

    .end local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v64, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v204, v205

    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v116, v117

    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v116, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v209, v210

    .end local v210    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v209    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_7d

    .line 1356
    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v94    # "e":Ljava/lang/RuntimeException;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v209    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v149    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v210    # "vibrator":Lcom/android/server/VibratorService;
    :catch_9d
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v148, v149

    .end local v149    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    goto/16 :goto_80

    .line 943
    .end local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v206    # "timaEnabled":Z
    .end local v210    # "vibrator":Lcom/android/server/VibratorService;
    .end local v212    # "watchdog":Lcom/android/server/Watchdog;
    .local v64, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v72, "dEncService":Lcom/android/server/DirEncryptService;
    .local v116, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v141    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .local v148, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .local v209, "vibrator":Lcom/android/server/VibratorService;
    .local v220, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_9e
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v140, v141

    .end local v141    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .restart local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    goto/16 :goto_7f

    .line 934
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v139    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .local v140, "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    :catch_9f
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v138, v139

    .end local v139    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .restart local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    goto/16 :goto_7e

    .end local v9    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v88    # "dlpService":Lcom/android/server/DLPManagerService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .end local v130    # "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .end local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .end local v134    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    .end local v136    # "mHMS":Lcom/android/server/HarmonyEASService;
    .end local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .end local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .end local v144    # "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    .end local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v159    # "mountService":Landroid/os/storage/IMountService;
    .end local v180    # "sdpLogService":Lcom/android/server/SdpLogService;
    .end local v182    # "sdpService":Lcom/android/server/SdpManagerService;
    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v208    # "versionInfo":Landroid/os/Bundle;
    .end local v209    # "vibrator":Lcom/android/server/VibratorService;
    .end local v220    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v66    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v122    # "location":Lcom/android/server/LocationManagerService;
    .restart local v154    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v170    # "notification":Landroid/app/INotificationManager;
    .restart local v176    # "sLocation":Landroid/os/IBinder;
    :cond_71
    move-object/from16 v4, v165

    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_46

    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v9    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v88    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v120    # "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .restart local v124    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v126    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .restart local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .restart local v130    # "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .restart local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .restart local v134    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    .restart local v136    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v142    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .restart local v144    # "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    .restart local v180    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v182    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v197    # "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    .restart local v200    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_72
    move-object/from16 v4, v165

    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_62
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3020
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3021
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 3022
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 3021
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3023
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3025
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 3019
    return-void
.end method

.method private startThemeService()V
    .locals 5

    .prologue
    .line 3009
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 3010
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3011
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.themecenter"

    .line 3012
    const-string/jumbo v4, "com.samsung.android.thememanager.ThemeManagerService"

    .line 3011
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3013
    const-string/jumbo v2, "safeMode"

    iget-boolean v3, p0, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3014
    const-string/jumbo v2, "isStartedBySystemServer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3015
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 3008
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3029
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3030
    const-string/jumbo v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    return-void
.end method
