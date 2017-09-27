.class public Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;
.super Ljava/lang/Thread;
.source "EnterpriseBillingAsyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$1;,
        Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$2;,
        Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;,
        Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$4;,
        Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$5;,
        Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$6;,
        Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;
    }
.end annotation


# static fields
.field private static final ACTION_ADMIN_CHANGED:I = 0x2

.field private static final ACTION_APN_CHANGE:I = 0x5

.field private static final ACTION_BOOT_COMPLETE:I = 0x3

.field private static final ACTION_DATA_SIM_CHANGE:I = 0x6

.field private static final ACTION_PACKAGE_MODIFIED:I = 0x1

.field private static final ACTION_TELEPHONY_CHANGE:I = 0x4

.field private static final ACTION_USER_REMOVED:I = 0x0

.field private static final INTENT_CONTAINER_ADMIN_CHANGED_ACTION:Ljava/lang/String; = "enterprise.container.admin.changed"

.field private static final TAG:Ljava/lang/String; = "EnterpriseBillingAsyncHandler"

.field private static sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;


# instance fields
.field private bootCompletereceiver:Landroid/content/BroadcastReceiver;

.field private containerAdminChangeReceiver:Landroid/content/BroadcastReceiver;

.field private dataSimChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mApnObserver:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;

.field private mContext:Landroid/content/Context;

.field private mEbpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

.field private mHandler:Landroid/os/Handler;

.field private packageModificationReceiver:Landroid/content/BroadcastReceiver;

.field private telephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private userRemovalReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mEbpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ebpInternal"    # Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 170
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$1;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->userRemovalReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$2;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->packageModificationReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->containerAdminChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$4;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->bootCompletereceiver:Landroid/content/BroadcastReceiver;

    .line 225
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$5;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$5;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->telephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 259
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$6;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$6;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->dataSimChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mEbpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    .line 51
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;)Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ebpInternal"    # Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    .prologue
    .line 58
    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    if-nez v0, :cond_1

    .line 59
    const-class v1, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;)V

    sput-object v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 66
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initialize()V
    .locals 18

    .prologue
    .line 72
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v4, "userRemovalFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->userRemovalReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 76
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v8, "packageModificationFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "package"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->packageModificationReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 87
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v12, "containerAdminChangeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "enterprise.container.admin.changed"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->containerAdminChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 90
    const-string/jumbo v13, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    const/4 v14, 0x0

    .line 89
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 92
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v15, "bootCompleteFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v15, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->bootCompletereceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 98
    .local v17, "telephonyManager":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->telephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 100
    new-instance v1, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mApnObserver:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;

    .line 101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mApnObserver:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v16, "dataSimChangeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->dataSimChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    const-string/jumbo v0, "EnterpriseBillingAsyncHandler"

    const-string/jumbo v1, "run - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->initialize()V

    .line 116
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 118
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$7;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$7;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mHandler:Landroid/os/Handler;

    .line 160
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 162
    const-string/jumbo v0, "EnterpriseBillingAsyncHandler"

    const-string/jumbo v1, "run - end - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method
