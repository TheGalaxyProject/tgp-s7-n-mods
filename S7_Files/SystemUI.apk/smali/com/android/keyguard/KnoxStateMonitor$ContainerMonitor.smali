.class Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;
.super Ljava/lang/Object;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$1;,
        Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;,
        Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$3;,
        Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;,
        Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$PersonaObserver;
    }
.end annotation


# instance fields
.field private final ACTION_RCP_POLICY_CHANGED:Ljava/lang/String;

.field private final KNOX_DEBUG:Z

.field private final KNOX_EXPORT_DATA:I

.field private final KNOX_IMPORT_DATA:I

.field private final KNOX_NO_SANITIZING:I

.field private final KNOX_SANITIZING:I

.field private final KNOX_SANITIZING_LOCKSCREEN:I

.field private final MYKNOX_PKG:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContainerObserver:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mExportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsContainerKioskMode:Z

.field private final mKnoxInLockMode:Landroid/util/SparseBooleanArray;

.field private final mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

.field private mLockscreenPublicMode:Z

.field private final mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

.field private final mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

.field private mPersonas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field private final mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private final mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/keyguard/KnoxStateMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Lcom/samsung/android/knox/SemPersonaManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isContainerKioskMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)Ljava/lang/String;
    .locals 1
    .param p1, "personaID"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getKnoxName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getContainerIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getPersonalManager()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->registerPersonaObserver(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->setContainerKioskMode(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/keyguard/KnoxStateMonitor;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 993
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 967
    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    .line 968
    iput-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 969
    iput-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    .line 970
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    .line 971
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mLockscreenPublicMode:Z

    .line 973
    const-string/jumbo v0, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->ACTION_RCP_POLICY_CHANGED:Ljava/lang/String;

    .line 974
    const-string/jumbo v0, "com.samsung.knoxpb.mdm"

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->MYKNOX_PKG:Ljava/lang/String;

    .line 975
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 977
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 979
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 980
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 981
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    .line 982
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    .line 983
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mContainerObserver:Landroid/util/SparseArray;

    .line 985
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_IMPORT_DATA:I

    .line 986
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_EXPORT_DATA:I

    .line 987
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_SANITIZING:I

    .line 988
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_NO_SANITIZING:I

    .line 990
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_SANITIZING_LOCKSCREEN:I

    .line 1060
    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$1;-><init>(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1081
    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;-><init>(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

    .line 1098
    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$3;-><init>(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    .line 1121
    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;-><init>(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 994
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->registerCallback()V

    .line 995
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->registerReceivers()V

    .line 993
    return-void
.end method

.method private getContainerIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1257
    const/4 v0, 0x0

    .line 1259
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1260
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1261
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 1262
    .local v1, "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    iget v3, v1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1266
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v2    # "pInfo$iterator":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method private getKnoxName(I)Ljava/lang/String;
    .locals 2
    .param p1, "personaID"    # I

    .prologue
    .line 1358
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getPersonalManager()V

    .line 1359
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPersonalManager()V
    .locals 2

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1351
    :cond_0
    return-void
.end method

.method private getPolicy(ILjava/lang/String;I)Z
    .locals 11
    .param p1, "userId"    # I
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "policyArray"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1399
    const-string/jumbo v1, "true"

    .line 1400
    .local v1, "TRUE":Ljava/lang/String;
    const-string/jumbo v0, "false"

    .line 1402
    .local v0, "FALSE":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1403
    return v6

    .line 1408
    :cond_0
    const/4 v2, 0x0

    .line 1409
    .local v2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sparse-switch p3, :sswitch_data_0

    .line 1425
    return v7

    .line 1411
    :sswitch_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    .line 1428
    .local v2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1429
    .local v5, "policy":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 1431
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getPersonalManager()V

    .line 1432
    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1433
    const-string/jumbo v9, "persona_policy"

    .line 1432
    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaPolicyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1434
    .local v4, "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    if-nez v4, :cond_1

    .line 1435
    return v7

    .line 1414
    .end local v4    # "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    .end local v5    # "policy":Ljava/lang/String;
    .local v2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :sswitch_1
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    .local v2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    goto :goto_0

    .line 1417
    .local v2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :sswitch_2
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    .local v2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    goto :goto_0

    .line 1421
    .local v2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :sswitch_3
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    .local v2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    goto :goto_0

    .line 1438
    .restart local v4    # "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    .restart local v5    # "policy":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v8, "Notifications"

    .line 1437
    invoke-virtual {v4, p1, v8, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1441
    const-string/jumbo v8, "true"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "false"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1442
    :cond_2
    invoke-virtual {v2, p1, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1449
    .end local v4    # "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    :cond_3
    :goto_1
    iget-boolean v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v8, :cond_4

    .line 1450
    const-string/jumbo v8, "KnoxStateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPolicy: policy value returned = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_4
    const-string/jumbo v8, "true"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_2
    return v6

    .line 1444
    :catch_0
    move-exception v3

    .line 1445
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "KnoxStateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPolicy: threw an exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    move v6, v7

    .line 1451
    goto :goto_2

    .line 1409
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_0
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private isContainerKioskMode()Z
    .locals 1

    .prologue
    .line 1253
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    return v0
.end method

.method private isPersona(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1239
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 1240
    const/16 v0, 0xc8

    if-gt p1, v0, :cond_0

    .line 1241
    const/4 v0, 0x1

    return v0

    .line 1243
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPersonaInKioskMode(I)Z
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 1247
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getPersonalManager()V

    .line 1248
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v0

    .line 1249
    .local v0, "personaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private knoxContainerInLockMode(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1316
    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1317
    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    .line 1318
    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get KnoxInLockMode for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :cond_0
    return v4

    .line 1321
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 1322
    .local v0, "index":I
    if-gez v0, :cond_3

    .line 1323
    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_2

    .line 1324
    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get KnoxInLockMode for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_2
    return v4

    .line 1327
    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_4

    .line 1328
    const-string/jumbo v1, "KnoxStateMonitor"

    .line 1329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get KnoxInLockMode for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1330
    iget-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 1329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1328
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1
.end method

.method private knoxContainerInSuperLockMode(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1298
    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1299
    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    .line 1300
    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get knoxInSuperLockMode for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_0
    return v4

    .line 1303
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 1304
    .local v0, "index":I
    if-gez v0, :cond_3

    .line 1305
    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_2

    .line 1306
    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get knoxInSuperLockMode for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_2
    return v4

    .line 1309
    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_4

    .line 1310
    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get knoxInSuperLockMode for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1311
    iget-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 1310
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1
.end method

.method private registerCallback()V
    .locals 0

    .prologue
    .line 998
    return-void
.end method

.method private registerPersonaObserver(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1279
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mContainerObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1280
    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$PersonaObserver;

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    .line 1281
    const/4 v2, 0x1

    .line 1280
    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$PersonaObserver;-><init>(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;Landroid/content/Context;II)V

    .line 1282
    .local v0, "observer":Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$PersonaObserver;
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mContainerObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1283
    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    .line 1284
    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "register container observer for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    .end local v0    # "observer":Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$PersonaObserver;
    :cond_0
    return-void
.end method

.method private registerReceivers()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1003
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1004
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "com.sec.knox.SETUP_COMPLETE"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1005
    const-string/jumbo v8, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1006
    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1007
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1008
    .local v6, "personaLaunchFilter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "com.sec.knox.container.action.launchinfo"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1009
    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    .line 1010
    const-string/jumbo v10, "com.samsung.container.LAUNCH_INFO"

    .line 1009
    invoke-virtual {v8, v9, v6, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1012
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1013
    .local v0, "RcpFilter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1014
    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1016
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getPersonalManager()V

    .line 1017
    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    .line 1019
    const/4 v5, 0x0

    .line 1020
    .local v5, "personaIds":[I
    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v8, :cond_0

    .line 1021
    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v5

    .line 1023
    .end local v5    # "personaIds":[I
    :cond_0
    if-eqz v5, :cond_6

    .line 1024
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v5

    if-ge v3, v8, :cond_6

    .line 1025
    aget v8, v5, v3

    invoke-direct {p0, v8}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1027
    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1028
    aget v9, v5, v3

    .line 1027
    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->getState()Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v1

    .line 1029
    .local v1, "currState":Lcom/samsung/android/knox/SemPersonaState;
    sget-object v8, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-eq v1, v8, :cond_1

    .line 1030
    sget-object v8, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-ne v1, v8, :cond_5

    .line 1032
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    aget v9, v5, v3

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1035
    :cond_2
    sget-object v8, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-ne v1, v8, :cond_3

    .line 1036
    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    aget v9, v5, v3

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1039
    :cond_3
    aget v8, v5, v3

    invoke-direct {p0, v8}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->registerPersonaObserver(I)V

    .line 1040
    aget v8, v5, v3

    invoke-direct {p0, v8}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->setContainerKioskMode(I)V

    .line 1041
    iget-boolean v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v8, :cond_4

    .line 1042
    const-string/jumbo v8, "KnoxStateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "add container observer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " for userId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1043
    aget v10, v5, v3

    .line 1042
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1043
    const-string/jumbo v10, " No. of users="

    .line 1042
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1043
    array-length v10, v5

    .line 1042
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    .end local v1    # "currState":Lcom/samsung/android/knox/SemPersonaState;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1031
    .restart local v1    # "currState":Lcom/samsung/android/knox/SemPersonaState;
    :cond_5
    sget-object v8, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v8, :cond_2

    goto :goto_1

    .line 1047
    .end local v1    # "currState":Lcom/samsung/android/knox/SemPersonaState;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 1048
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "KnoxStateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "start: threw an exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1052
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1054
    .local v7, "personaRemoveStartedFilter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "com.sec.knox.container.action.containerremovalstarted"

    .line 1053
    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1055
    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

    .line 1056
    const-string/jumbo v10, "com.samsung.container.OBSERVER"

    .line 1055
    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1002
    return-void
.end method

.method private setContainerKioskMode(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/16 v2, 0x139d

    .line 1270
    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isPersonaInKioskMode(I)Z

    move-result v0

    .line 1271
    .local v0, "isContainerKioskMode":Z
    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eq v1, v0, :cond_0

    .line 1272
    iput-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    .line 1273
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1274
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1269
    :cond_0
    return-void
.end method


# virtual methods
.method public filterOutForKnoxContainer(ILjava/lang/String;Z)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isLockscreenPublicMode"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1471
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    .line 1474
    const-string/jumbo v5, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    .line 1475
    const-string/jumbo v6, "com.android.incallui"

    .line 1471
    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1479
    .local v0, "inCallUIPackageName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz v2, :cond_0

    .line 1480
    if-nez p1, :cond_0

    .line 1481
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1482
    const-string/jumbo v2, "com.android.server.telecom"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1493
    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz v2, :cond_6

    .line 1494
    const/4 v1, -0x1

    .line 1495
    .local v1, "kioskContainerId":I
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1497
    :cond_1
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 1498
    if-nez p1, :cond_6

    .line 1499
    const-string/jumbo v2, "com.android.mms"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1500
    const-string/jumbo v2, "com.samsung.android.messaging"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1499
    if-nez v2, :cond_2

    .line 1500
    const-string/jumbo v2, "com.kddi.android.cmail"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1497
    if-eqz v2, :cond_6

    .line 1502
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result v2

    .line 1497
    if-eqz v2, :cond_6

    .line 1503
    iget-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v2, :cond_3

    .line 1504
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v4, "----- filterOutForKnoxContainer:  Skipping com.android.mms notif for COM + ADMIN_LOCKED case"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_3
    return v3

    .line 1483
    .end local v1    # "kioskContainerId":I
    :cond_4
    const-string/jumbo v2, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1484
    const-string/jumbo v2, "android"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1485
    const-string/jumbo v2, "com.android.systemui"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1486
    const-string/jumbo v2, "com.android.mms"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1487
    const-string/jumbo v2, "com.samsung.android.messaging"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1486
    if-nez v2, :cond_0

    .line 1487
    const-string/jumbo v2, "com.kddi.android.cmail"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1486
    if-nez v2, :cond_0

    .line 1489
    const-string/jumbo v2, "com.android.settings"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1490
    const-string/jumbo v2, "com.android.phone"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1491
    return v3

    .line 1496
    .restart local v1    # "kioskContainerId":I
    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaInfo;

    iget v1, v2, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    goto/16 :goto_0

    .line 1512
    .end local v1    # "kioskContainerId":I
    :cond_6
    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    .line 1513
    const-string/jumbo v2, "com.sec.knox.switcher"

    .line 1512
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_1
    return v2

    :cond_7
    move v2, v4

    .line 1513
    goto :goto_1
.end method

.method public isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "currentUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isRemoteViewProvided"    # Z
    .param p5, "isLockscreenPublicMode"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1365
    if-eqz p3, :cond_0

    .line 1366
    const-string/jumbo v3, "com.samsung.knox.knoxtrustagent"

    .line 1365
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1367
    return v5

    .line 1369
    :cond_0
    const-string/jumbo v3, "knox-sanitize-data"

    const/4 v4, 0x4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getPolicy(ILjava/lang/String;I)Z

    move-result v1

    .line 1372
    .local v1, "policy":Z
    const-string/jumbo v3, "knox-sanitize-data-lockscreen"

    const/16 v4, 0x10

    .line 1371
    invoke-direct {p0, p1, v3, v4}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getPolicy(ILjava/lang/String;I)Z

    move-result v2

    .line 1374
    .local v2, "policy_lockscreen":Z
    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->knoxContainerInLockMode(I)Z

    move-result v0

    .line 1378
    .local v0, "isContainerLocked":Z
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1379
    if-nez p4, :cond_1

    .line 1378
    if-nez p5, :cond_7

    .line 1381
    :cond_1
    if-eqz v2, :cond_2

    .line 1378
    if-nez p5, :cond_7

    .line 1383
    :cond_2
    iget-boolean v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    if-nez p4, :cond_7

    .line 1384
    :cond_3
    if-eqz v1, :cond_4

    .line 1378
    if-nez v0, :cond_7

    .line 1386
    :cond_4
    const-string/jumbo v3, "com.samsung.android.email.provider"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1387
    const-string/jumbo v3, "com.samsung.android.email.sync"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1386
    if-nez v3, :cond_5

    .line 1388
    const-string/jumbo v3, "com.samsung.android.email.ui"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1386
    if-nez v3, :cond_5

    .line 1389
    const-string/jumbo v3, "com.samsung.android.email.composer"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1386
    if-nez v3, :cond_5

    .line 1390
    const-string/jumbo v3, "com.android.email"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1386
    if-eqz v3, :cond_6

    .line 1391
    :cond_5
    if-nez v0, :cond_7

    .line 1392
    if-eqz p5, :cond_6

    if-eqz v0, :cond_7

    .line 1395
    :cond_6
    return v5

    .line 1393
    :cond_7
    const/4 v3, 0x1

    return v3
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 1

    .prologue
    .line 1344
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz v0, :cond_0

    .line 1345
    const/4 v0, 0x1

    return v0

    .line 1348
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isQuickConnectEnabled()Z
    .locals 1

    .prologue
    .line 1336
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    .line 1335
    if-eqz v0, :cond_0

    .line 1337
    const/4 v0, 0x0

    return v0

    .line 1339
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1456
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1467
    :cond_0
    return v1

    .line 1458
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaInfo;

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1459
    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.android.mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1460
    const-string/jumbo v0, "com.samsung.android.messaging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1459
    if-nez v0, :cond_2

    .line 1461
    const-string/jumbo v0, "com.kddi.android.cmail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1459
    if-eqz v0, :cond_0

    .line 1462
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
