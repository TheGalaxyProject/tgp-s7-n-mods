.class public final Lcom/android/server/SamsungCoreServices;
.super Ljava/lang/Object;
.source "SamsungCoreServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;,
        Lcom/android/server/SamsungCoreServices$ServiceTag;
    }
.end annotation


# static fields
.field private static final SAMSUNG_CORE_SERVICES_CREATOR_CLASS_NAME:Ljava/lang/String; = "com.android.server.SamsungCoreServicesCreator"

.field private static final TAG:Ljava/lang/String; = "SamsungCoreServices"

.field private static final sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 79
    :try_start_0
    const-string/jumbo v4, "com.android.server.SamsungCoreServicesCreator"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 80
    .local v0, "coreServicesCreatorClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sput-object v4, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-void

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    .line 89
    const-string/jumbo v5, "com.android.server.SamsungCoreServicesCreator could not be instantiated"

    .line 88
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 84
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 85
    .local v3, "ex":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/RuntimeException;

    .line 86
    const-string/jumbo v5, "com.android.server.SamsungCoreServicesCreator could not be instantiated"

    .line 85
    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 81
    .end local v3    # "ex":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 82
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    .line 83
    const-string/jumbo v5, "com.android.server.SamsungCoreServicesCreator could not be loaded"

    .line 82
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createActivityManagerServiceBridge(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IActivityManagerServiceBridge;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 123
    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    invoke-interface {v0, p0, p1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->createActivityManagerServiceBridge(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IActivityManagerServiceBridge;

    move-result-object v0

    return-object v0
.end method

.method public static createAlarmManagerServiceBridge(Landroid/content/Context;Lcom/android/server/AlarmManagerService;)Lcom/android/server/IAlarmManagerServiceBridge;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 127
    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    invoke-interface {v0, p0, p1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->createAlarmManagerServiceBridge(Landroid/content/Context;Lcom/android/server/AlarmManagerService;)Lcom/android/server/IAlarmManagerServiceBridge;

    move-result-object v0

    return-object v0
.end method

.method public static createService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;
    .locals 2
    .param p0, "serviceTag"    # Lcom/android/server/SamsungCoreServices$ServiceTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/SamsungCoreServices$ServiceTag;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "serviceTag"    # Lcom/android/server/SamsungCoreServices$ServiceTag;
    .param p1, "saveInstance"    # Z

    .prologue
    .line 107
    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    invoke-interface {v0, p0, p1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_AOD_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/AODWindowPolicy;

    return-object v0
.end method

.method public static getDssController()Lcom/android/server/DssController;
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_DSS_CONTROLLER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DssController;

    return-object v0
.end method

.method public static getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_EDGE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/EdgeWindowPolicy;

    return-object v0
.end method

.method public static getHorizontalModeService()Lcom/android/server/wm/HorizontalModeService;
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_HORIZONTAL_MODE_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/HorizontalModeService;

    return-object v0
.end method

.method public static getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTISCREEN_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    return-object v0
.end method

.method public static getMultitapKeyManager()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTITAPKEY_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageConfigurationController()Lcom/android/server/PackageConfigurationController;
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_PACKAGE_CONFIGURATION_CONTROLLER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationController;

    return-object v0
.end method

.method public static getReduceScreenPolicy()Lcom/android/server/policy/ReduceScreenPolicy;
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_REDUCE_SCREEN_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/ReduceScreenPolicy;

    return-object v0
.end method

.method public static getSamsungPhoneWindowManager()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_PHONE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;
    .locals 1
    .param p0, "serviceTag"    # Lcom/android/server/SamsungCoreServices$ServiceTag;

    .prologue
    .line 115
    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    invoke-interface {v0, p0}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;
    .locals 2

    .prologue
    .line 166
    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_TSP_STATE_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/TspStateManagerPolicy;

    return-object v0
.end method

.method public static isAvailable(Lcom/android/server/SamsungCoreServices$ServiceTag;)Z
    .locals 1
    .param p0, "serviceTag"    # Lcom/android/server/SamsungCoreServices$ServiceTag;

    .prologue
    .line 119
    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    invoke-interface {v0, p0}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->isAvailable(Lcom/android/server/SamsungCoreServices$ServiceTag;)Z

    move-result v0

    return v0
.end method
