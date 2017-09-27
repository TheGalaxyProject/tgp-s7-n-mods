.class public Lcom/android/server/bridge/operations/ProcessBadgeData;
.super Ljava/lang/Object;
.source "ProcessBadgeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/bridge/operations/ProcessBadgeData$1;,
        Lcom/android/server/bridge/operations/ProcessBadgeData$2;
    }
.end annotation


# static fields
.field static final PkgCall:[Ljava/lang/String;

.field static final PkgCallShortcut:[Ljava/lang/String;

.field static final PkgCall_dcm:[Ljava/lang/String;

.field static final PkgEmail:[Ljava/lang/String;

.field static final PkgMessage:[Ljava/lang/String;

.field static final PkgMessageShortcut:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String;

.field private static mProcessBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;


# instance fields
.field private ACTION_BADGE_COUNT_UPDATE:Ljava/lang/String;

.field private final DELAY_IN_MILLISECONDS:J

.field private final SYNC_BADGE_FOR_ALL_PERSONA:I

.field mBadgeObserver:Landroid/database/ContentObserver;

.field mBadgeRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandleThread:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;

.field mOwnerCallBadgeCountSync:I

.field mOwnerMessageBadgeCountSync:I

.field private mPersonaBadgeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/bridge/operations/ProcessBadgeData;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/bridge/operations/ProcessBadgeData;)Lcom/samsung/android/knox/SemPersonaManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/bridge/operations/ProcessBadgeData;I)V
    .locals 0
    .param p1, "mPersonaId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/bridge/operations/ProcessBadgeData;->handleObserverOwner(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/bridge/operations/ProcessBadgeData;I)V
    .locals 0
    .param p1, "mPersonaId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/bridge/operations/ProcessBadgeData;->handleObserverPersona(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    const-class v0, Lcom/android/server/bridge/operations/ProcessBadgeData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    .line 29
    new-array v0, v5, [Ljava/lang/String;

    .line 30
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    .line 31
    const-string/jumbo v2, "com.android.mms"

    .line 30
    invoke-static {v1, v2}, Lcom/android/server/bridge/operations/ProcessBadgeData;->getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 32
    const-string/jumbo v1, "com.android.mms.ui.ConversationComposer"

    aput-object v1, v0, v4

    .line 29
    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessage:[Ljava/lang/String;

    .line 34
    new-array v0, v5, [Ljava/lang/String;

    .line 35
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    .line 36
    const-string/jumbo v2, "com.android.contacts"

    .line 35
    invoke-static {v1, v2}, Lcom/android/server/bridge/operations/ProcessBadgeData;->getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 37
    const-string/jumbo v1, "com.android.dialer.DialtactsActivity"

    aput-object v1, v0, v4

    .line 34
    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall:[Ljava/lang/String;

    .line 39
    new-array v0, v5, [Ljava/lang/String;

    .line 40
    const-string/jumbo v1, "com.samsung.contacts"

    aput-object v1, v0, v3

    .line 41
    const-string/jumbo v1, "com.android.dialer.DialtactsActivity"

    aput-object v1, v0, v4

    .line 39
    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall_dcm:[Ljava/lang/String;

    .line 43
    new-array v0, v5, [Ljava/lang/String;

    .line 44
    const-string/jumbo v1, "com.android.email"

    aput-object v1, v0, v3

    .line 45
    const-string/jumbo v1, "com.android.email.activity.Welcome"

    aput-object v1, v0, v4

    .line 43
    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgEmail:[Ljava/lang/String;

    .line 48
    new-array v0, v5, [Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v3

    .line 50
    const-string/jumbo v1, "com.sec.knox.shortcutsms.PhoneShortcut"

    aput-object v1, v0, v4

    .line 48
    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    .line 52
    new-array v0, v5, [Ljava/lang/String;

    .line 53
    const-string/jumbo v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v3

    .line 54
    const-string/jumbo v1, "com.sec.knox.shortcutsms.SMSShortcut"

    aput-object v1, v0, v4

    .line 52
    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessageShortcut:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mProcessBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mContext:Landroid/content/Context;

    .line 58
    iput-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 61
    iput-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaBadgeCache:Ljava/util/HashMap;

    .line 62
    const-string/jumbo v0, "com.sec.knox.action.badge_update"

    iput-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->ACTION_BADGE_COUNT_UPDATE:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mHandleThread:Landroid/os/HandlerThread;

    .line 67
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->DELAY_IN_MILLISECONDS:J

    .line 68
    iput v2, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->SYNC_BADGE_FOR_ALL_PERSONA:I

    .line 70
    iput v2, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I

    .line 71
    iput v2, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerMessageBadgeCountSync:I

    .line 73
    new-instance v0, Lcom/android/server/bridge/operations/ProcessBadgeData$1;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/ProcessBadgeData$1;-><init>(Lcom/android/server/bridge/operations/ProcessBadgeData;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mBadgeRunnable:Ljava/lang/Runnable;

    .line 94
    new-instance v0, Lcom/android/server/bridge/operations/ProcessBadgeData$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/operations/ProcessBadgeData$2;-><init>(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 122
    iput-object p1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ProcessBadgeData"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mHandleThread:Landroid/os/HandlerThread;

    .line 125
    iget-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaBadgeCache:Ljava/util/HashMap;

    .line 130
    if-eqz p1, :cond_0

    .line 131
    const-string/jumbo v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 132
    sget-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Content Observer is registered for Badge"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/operations/Apps;->CONTENT_URI:Landroid/net/Uri;

    .line 134
    iget-object v2, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 133
    const/4 v3, 0x1

    .line 135
    const/4 v4, 0x0

    .line 133
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 121
    :cond_0
    return-void
.end method

.method private static getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mFloatingConst"    # Ljava/lang/String;
    .param p1, "mDefaultPackageName"    # Ljava/lang/String;

    .prologue
    .line 515
    move-object v1, p1

    .line 517
    .local v1, "mPackageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 522
    :goto_0
    return-object v1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No FloatingFeature"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/bridge/operations/ProcessBadgeData;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 144
    sget-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mProcessBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/android/server/bridge/operations/ProcessBadgeData;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/ProcessBadgeData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mProcessBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    .line 147
    :cond_0
    sget-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mProcessBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    return-object v0
.end method

.method private handleObserverOwner(I)V
    .locals 18
    .param p1, "mPersonaId"    # I

    .prologue
    .line 223
    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " handleObserverOwner , PersonaId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v11, 0x0

    .line 226
    .local v11, "mCount":I
    const/4 v12, 0x0

    .line 227
    .local v12, "mCursor":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 228
    .local v14, "mPackageName":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "isBadgeCountUpdated":Z
    const/16 v17, 0x0

    .line 231
    .local v17, "mUpdateCount":Z
    const/4 v15, 0x0

    .line 232
    .local v15, "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v16

    .line 233
    .local v16, "mPersonaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    const-string/jumbo v2, "content://0@com.sec.badge/apps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 234
    .local v3, "mOwnerUri":Landroid/net/Uri;
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    .line 235
    const-string/jumbo v2, "badgecount"

    const/4 v6, 0x0

    aput-object v2, v4, v6

    const-string/jumbo v2, "class"

    const/4 v6, 0x1

    aput-object v2, v4, v6

    const-string/jumbo v2, "package"

    const/4 v6, 0x2

    aput-object v2, v4, v6

    .line 237
    .local v4, "mProjection":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package IN ( \""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessage:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\" , \""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    sget-object v6, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 237
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 239
    const-string/jumbo v6, "\" , \""

    .line 237
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 239
    sget-object v6, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall_dcm:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 237
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 239
    const-string/jumbo v6, " \") "

    .line 237
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "mSelection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    .line 242
    const/4 v7, 0x0

    .line 241
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 244
    .local v12, "mCursor":Landroid/database/Cursor;
    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 246
    const/4 v9, 0x0

    .end local v14    # "mPackageName":Ljava/lang/String;
    .end local v15    # "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .local v9, "i":I
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v9, v2, :cond_9

    .line 248
    const/4 v10, 0x0

    .line 249
    const-string/jumbo v2, "badgecount"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 250
    const-string/jumbo v2, "package"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 252
    .local v14, "mPackageName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall_dcm:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 253
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I

    if-eq v2, v11, :cond_1

    .line 254
    const/4 v10, 0x1

    .line 264
    :cond_1
    :goto_1
    if-eqz v10, :cond_8

    .line 266
    const/16 v17, 0x0

    .line 267
    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "badge count updated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 270
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/bridge/operations/ProcessBadgeData;->isExistLauncherTypeContainer(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 271
    const/16 v17, 0x1

    .line 272
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "mIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :cond_2
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 274
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/knox/SemPersonaInfo;

    move-object v15, v0

    .line 275
    .local v15, "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Persona ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Lcom/samsung/android/knox/SemPersonaInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 276
    const-string/jumbo v7, " , isSecureFolder : "

    .line 275
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 276
    iget-boolean v7, v15, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    .line 275
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 277
    const-string/jumbo v7, " , lightWeightContainer : "

    .line 275
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 278
    iget-boolean v7, v15, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    .line 275
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-boolean v2, v15, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    if-nez v2, :cond_2

    .line 280
    invoke-virtual {v15}, Lcom/samsung/android/knox/SemPersonaInfo;->getId()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v11}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateShortcutBadgeCount(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 303
    .end local v3    # "mOwnerUri":Landroid/net/Uri;
    .end local v4    # "mProjection":[Ljava/lang/String;
    .end local v5    # "mSelection":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v12    # "mCursor":Landroid/database/Cursor;
    .end local v13    # "mIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .end local v14    # "mPackageName":Ljava/lang/String;
    .end local v15    # "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v16    # "mPersonaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :catch_0
    move-exception v8

    .line 304
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    if-eqz v12, :cond_3

    .line 307
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 309
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    const/4 v12, 0x0

    .line 222
    .local v12, "mCursor":Landroid/database/Cursor;
    return-void

    .line 256
    .restart local v3    # "mOwnerUri":Landroid/net/Uri;
    .restart local v4    # "mProjection":[Ljava/lang/String;
    .restart local v5    # "mSelection":Ljava/lang/String;
    .restart local v9    # "i":I
    .local v12, "mCursor":Landroid/database/Cursor;
    .restart local v14    # "mPackageName":Ljava/lang/String;
    .restart local v16    # "mPersonaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :cond_4
    :try_start_2
    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessage:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 257
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerMessageBadgeCountSync:I

    if-eq v2, v11, :cond_1

    .line 258
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 261
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 285
    :cond_6
    const/16 v17, 0x1

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v15

    .line 287
    .restart local v15    # "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v14, v11}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateShortcutBadgeCount(ILjava/lang/String;I)V

    .line 290
    .end local v15    # "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_7
    if-eqz v17, :cond_8

    .line 291
    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessage:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 292
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerMessageBadgeCountSync:I

    .line 299
    :cond_8
    :goto_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_c

    .line 306
    .end local v9    # "i":I
    .end local v14    # "mPackageName":Ljava/lang/String;
    :cond_9
    if-eqz v12, :cond_3

    .line 307
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 294
    .restart local v9    # "i":I
    .restart local v14    # "mPackageName":Ljava/lang/String;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 305
    .end local v3    # "mOwnerUri":Landroid/net/Uri;
    .end local v4    # "mProjection":[Ljava/lang/String;
    .end local v5    # "mSelection":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v12    # "mCursor":Landroid/database/Cursor;
    .end local v14    # "mPackageName":Ljava/lang/String;
    .end local v16    # "mPersonaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :catchall_0
    move-exception v2

    .line 306
    if-eqz v12, :cond_b

    .line 307
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_b
    const/4 v12, 0x0

    .line 305
    .local v12, "mCursor":Landroid/database/Cursor;
    throw v2

    .line 246
    .restart local v3    # "mOwnerUri":Landroid/net/Uri;
    .restart local v4    # "mProjection":[Ljava/lang/String;
    .restart local v5    # "mSelection":Ljava/lang/String;
    .restart local v9    # "i":I
    .local v12, "mCursor":Landroid/database/Cursor;
    .restart local v14    # "mPackageName":Ljava/lang/String;
    .restart local v16    # "mPersonaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method private handleObserverPersona(I)V
    .locals 21
    .param p1, "mPersonaId"    # I

    .prologue
    .line 317
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleObserverPersona() and the PersonaId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/16 v18, 0x0

    .local v18, "mNoOfUpdates":I
    const/4 v8, 0x0

    .line 320
    .local v8, "mBadgeCount":I
    const/16 v16, 0x0

    .line 321
    .local v16, "mCursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 322
    .local v10, "mBundle":Landroid/os/Bundle;
    const/4 v14, 0x0

    .local v14, "mComponentName":Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, "mPackageName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 323
    .local v13, "mClassName":Ljava/lang/String;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v19, "mPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v12, "mClassList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v15, "mCountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaBadgeCache:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 329
    .local v9, "mBadgeCountMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBadgeCountMap Size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "content://"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 331
    const-string/jumbo v4, "@com.sec.badge/apps"

    .line 330
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 332
    .local v2, "mUserUri":Landroid/net/Uri;
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    .line 333
    const-string/jumbo v1, "badgecount"

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string/jumbo v1, "package"

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string/jumbo v1, "class"

    const/4 v4, 0x2

    aput-object v1, v3, v4

    .line 336
    .local v3, "mProjection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 338
    .local v16, "mCursor":Landroid/database/Cursor;
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    .end local v13    # "mClassName":Ljava/lang/String;
    .end local v14    # "mComponentName":Ljava/lang/String;
    .end local v20    # "mPackageName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "badgecount"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 341
    const-string/jumbo v1, "package"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 342
    .local v20, "mPackageName":Ljava/lang/String;
    const-string/jumbo v1, "class"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 343
    .local v13, "mClassName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 345
    .local v14, "mComponentName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessageShortcut:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 361
    :cond_1
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    .end local v13    # "mClassName":Ljava/lang/String;
    .end local v14    # "mComponentName":Ljava/lang/String;
    .end local v20    # "mPackageName":Ljava/lang/String;
    :cond_2
    if-lez v18, :cond_3

    .line 366
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->ACTION_BADGE_COUNT_UPDATE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v17, "mIntent":Landroid/content/Intent;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    .local v11, "mBundle":Landroid/os/Bundle;
    :try_start_1
    const-string/jumbo v1, "action"

    .end local v10    # "mBundle":Landroid/os/Bundle;
    const-string/jumbo v4, "UpdateBadgeCount"

    invoke-virtual {v11, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v4, "pkg_names"

    .line 370
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 369
    invoke-virtual {v11, v4, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 371
    const-string/jumbo v4, "class_names"

    .line 372
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 371
    invoke-virtual {v11, v4, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 373
    const-string/jumbo v1, "counts"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/bridge/operations/ProcessBadgeData;->arrayListToIntArray(Ljava/util/List;)[I

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 374
    const-string/jumbo v1, "UserId"

    move/from16 v0, p1

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 375
    const-string/jumbo v1, "com.sec.knox.bridge.BadgeData"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v11

    .line 383
    .end local v11    # "mBundle":Landroid/os/Bundle;
    .end local v17    # "mIntent":Landroid/content/Intent;
    :cond_3
    if-eqz v16, :cond_4

    .line 384
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 386
    .end local v2    # "mUserUri":Landroid/net/Uri;
    .end local v3    # "mProjection":[Ljava/lang/String;
    .end local v16    # "mCursor":Landroid/database/Cursor;
    :cond_4
    :goto_1
    const/16 v16, 0x0

    .line 316
    .local v16, "mCursor":Landroid/database/Cursor;
    return-void

    .line 347
    .restart local v2    # "mUserUri":Landroid/net/Uri;
    .restart local v3    # "mProjection":[Ljava/lang/String;
    .restart local v10    # "mBundle":Landroid/os/Bundle;
    .restart local v13    # "mClassName":Ljava/lang/String;
    .restart local v14    # "mComponentName":Ljava/lang/String;
    .local v16, "mCursor":Landroid/database/Cursor;
    .restart local v20    # "mPackageName":Ljava/lang/String;
    :cond_5
    :try_start_2
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    invoke-virtual {v9, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 350
    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v8, :cond_1

    .line 353
    :cond_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    add-int/lit8 v18, v18, 0x1

    .line 358
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "badge count updated ComponentName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 359
    const-string/jumbo v5, " , BadgeCount : "

    .line 358
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 380
    .end local v2    # "mUserUri":Landroid/net/Uri;
    .end local v3    # "mProjection":[Ljava/lang/String;
    .end local v13    # "mClassName":Ljava/lang/String;
    .end local v14    # "mComponentName":Ljava/lang/String;
    .end local v16    # "mCursor":Landroid/database/Cursor;
    .end local v20    # "mPackageName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 381
    .end local v10    # "mBundle":Landroid/os/Bundle;
    .local v7, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 383
    if-eqz v16, :cond_4

    .line 384
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 382
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 383
    :goto_3
    if-eqz v16, :cond_7

    .line 384
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_7
    const/16 v16, 0x0

    .line 382
    .local v16, "mCursor":Landroid/database/Cursor;
    throw v1

    .restart local v2    # "mUserUri":Landroid/net/Uri;
    .restart local v3    # "mProjection":[Ljava/lang/String;
    .restart local v11    # "mBundle":Landroid/os/Bundle;
    .local v16, "mCursor":Landroid/database/Cursor;
    .restart local v17    # "mIntent":Landroid/content/Intent;
    :catchall_1
    move-exception v1

    move-object v10, v11

    .end local v11    # "mBundle":Landroid/os/Bundle;
    .local v10, "mBundle":Landroid/os/Bundle;
    goto :goto_3

    .line 380
    .end local v10    # "mBundle":Landroid/os/Bundle;
    .restart local v11    # "mBundle":Landroid/os/Bundle;
    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    move-object v10, v11

    .end local v11    # "mBundle":Landroid/os/Bundle;
    .restart local v10    # "mBundle":Landroid/os/Bundle;
    goto :goto_2
.end method

.method private updateBadgeCount(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "mUserId"    # I
    .param p2, "mPackageName"    # Ljava/lang/String;
    .param p3, "mClassName"    # Ljava/lang/String;
    .param p4, "mBadgeCount"    # I

    .prologue
    const/4 v8, 0x0

    .line 158
    sget-object v5, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateBadgeCount : mUserId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , mPackageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 159
    const-string/jumbo v7, " , mClassName : "

    .line 158
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 159
    const-string/jumbo v7, " , mBadgeCount : "

    .line 158
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v0, "mContentValues":Landroid/content/ContentValues;
    const-string/jumbo v5, "badgecount"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string/jumbo v1, "package=? AND class=?"

    .line 164
    .local v1, "mSelection":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    .line 165
    aput-object p2, v2, v8

    const/4 v5, 0x1

    aput-object p3, v2, v5

    .line 167
    .local v2, "mSelectionArgs":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@com.sec.badge/apps"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 169
    .local v4, "mUserUri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 171
    .local v3, "mUpdateCount":I
    if-nez v3, :cond_0

    .line 172
    const-string/jumbo v5, "package"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v5, "class"

    invoke-virtual {v0, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v5, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 157
    :cond_0
    return-void
.end method

.method private updateShortcutBadgeCount(ILjava/lang/String;I)V
    .locals 5
    .param p1, "mUserId"    # I
    .param p2, "mPackageName"    # Ljava/lang/String;
    .param p3, "mBadgeCount"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    sget-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateShortcutBadgeCount : mUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , mPackageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    const-string/jumbo v2, " , mBadgeCount : "

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    sget-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateBadgeCount(ILjava/lang/String;Ljava/lang/String;I)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    sget-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateBadgeCount(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 194
    :cond_2
    sget-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall_dcm:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    iget-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    sget-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall_dcm:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall_dcm:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateBadgeCount(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 198
    :cond_3
    sget-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateBadgeCount(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 200
    :cond_4
    sget-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessage:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessageShortcut:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessageShortcut:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateBadgeCount(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public arrayListToIntArray(Ljava/util/List;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 441
    if-nez p1, :cond_0

    .line 442
    return-object v4

    .line 445
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 446
    .local v0, "arr":[I
    const/4 v3, 0x0

    .line 447
    .local v3, "i":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "elem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 448
    .local v1, "elem":I
    aput v1, v0, v3

    .line 449
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 452
    .end local v1    # "elem":I
    :cond_1
    return-object v0
.end method

.method public getBadgeInfoByPkgName(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .param p1, "mUserId"    # I
    .param p2, "mPackageName"    # Ljava/lang/String;

    .prologue
    .line 396
    sget-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBadgeInfoByPkgName(), UserId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , PackageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v9, 0x0

    .line 400
    .local v9, "mCursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 404
    .local v7, "mBundle":Landroid/os/Bundle;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "@com.sec.badge/apps"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 405
    .local v1, "mUserUri":Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    .line 406
    const-string/jumbo v0, "badgecount"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "package"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string/jumbo v0, "class"

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 409
    .local v2, "mProjection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 411
    .local v9, "mCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    :cond_0
    const-string/jumbo v0, "package"

    .line 413
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    .local v8, "mBundle":Landroid/os/Bundle;
    :try_start_1
    const-string/jumbo v0, "action"

    .end local v7    # "mBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "UpdateBadgeCount"

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string/jumbo v0, "pkg_names"

    invoke-virtual {v8, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string/jumbo v0, "class_names"

    .line 420
    const-string/jumbo v3, "class"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 419
    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string/jumbo v0, "counts"

    .line 422
    const-string/jumbo v3, "badgecount"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 421
    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    const-string/jumbo v0, "UserId"

    invoke-virtual {v8, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 433
    if-eqz v9, :cond_1

    .line 434
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 424
    :cond_1
    return-object v8

    .line 426
    .end local v8    # "mBundle":Landroid/os/Bundle;
    .restart local v7    # "mBundle":Landroid/os/Bundle;
    :cond_2
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 433
    :cond_3
    if-eqz v9, :cond_4

    .line 434
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 437
    .end local v1    # "mUserUri":Landroid/net/Uri;
    .end local v2    # "mProjection":[Ljava/lang/String;
    .end local v7    # "mBundle":Landroid/os/Bundle;
    .end local v9    # "mCursor":Landroid/database/Cursor;
    :cond_4
    :goto_0
    return-object v7

    .line 430
    .restart local v7    # "mBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v6

    .line 431
    .end local v7    # "mBundle":Landroid/os/Bundle;
    .local v6, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 433
    if-eqz v9, :cond_4

    .line 434
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 432
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 433
    :goto_2
    if-eqz v9, :cond_5

    .line 434
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 432
    :cond_5
    throw v0

    .restart local v1    # "mUserUri":Landroid/net/Uri;
    .restart local v2    # "mProjection":[Ljava/lang/String;
    .restart local v8    # "mBundle":Landroid/os/Bundle;
    .restart local v9    # "mCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "mBundle":Landroid/os/Bundle;
    .local v7, "mBundle":Landroid/os/Bundle;
    goto :goto_2

    .line 430
    .end local v7    # "mBundle":Landroid/os/Bundle;
    .restart local v8    # "mBundle":Landroid/os/Bundle;
    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "mBundle":Landroid/os/Bundle;
    .restart local v7    # "mBundle":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public initializePersonaBadgeCache(I)V
    .locals 11
    .param p1, "mPersonaId"    # I

    .prologue
    .line 467
    sget-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initializePersonaBadgeCache for Persona : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    if-eqz p1, :cond_3

    .line 471
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 472
    .local v8, "mBadgeCountMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .line 473
    .local v10, "mCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 474
    .local v9, "mComponentName":Ljava/lang/String;
    const/4 v7, -0x1

    .line 477
    .local v7, "mBadgeCount":I
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 478
    const-string/jumbo v3, "@com.sec.badge/apps"

    .line 477
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 479
    .local v1, "mUserUri":Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    .line 480
    const-string/jumbo v0, "badgecount"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "class"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string/jumbo v0, "package"

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 483
    .local v2, "mProjection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 484
    const/4 v5, 0x0

    .line 483
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 486
    .local v10, "mCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    .end local v9    # "mComponentName":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    const-string/jumbo v3, "package"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 488
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 490
    const-string/jumbo v3, "|"

    .line 488
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 491
    const-string/jumbo v3, "class"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 492
    .local v9, "mComponentName":Ljava/lang/String;
    const-string/jumbo v0, "badgecount"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 493
    sget-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ComonentName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 500
    .end local v9    # "mComponentName":Ljava/lang/String;
    :cond_1
    if-eqz v10, :cond_2

    .line 501
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaBadgeCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .end local v1    # "mUserUri":Landroid/net/Uri;
    .end local v2    # "mProjection":[Ljava/lang/String;
    .end local v7    # "mBadgeCount":I
    .end local v8    # "mBadgeCountMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "mCursor":Landroid/database/Cursor;
    :cond_3
    :goto_0
    return-void

    .line 497
    .restart local v7    # "mBadgeCount":I
    .restart local v8    # "mBadgeCountMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v6

    .line 498
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    if-eqz v10, :cond_4

    .line 501
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_4
    iget-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaBadgeCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 499
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 500
    if-eqz v10, :cond_5

    .line 501
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_5
    iget-object v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaBadgeCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    throw v0
.end method

.method public isExistLauncherTypeContainer(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 532
    .local p1, "mPersonaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    const/4 v2, 0x0

    .line 533
    .local v2, "mResult":Z
    const/4 v1, 0x0

    .line 534
    .local v1, "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 543
    .end local v1    # "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_0
    sget-object v3, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isExistLauncherTypeContainer  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return v2

    .line 535
    .restart local v1    # "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v1    # "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .local v0, "mIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 536
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 537
    .local v1, "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    iget-boolean v3, v1, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    if-nez v3, :cond_2

    iget-boolean v3, v1, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    if-nez v3, :cond_2

    .line 538
    sget-object v3, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isExistLauncherTypeContainer  :true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v3, 0x1

    return v3
.end method

.method public trySync(I)V
    .locals 4
    .param p1, "mPersonaId"    # I

    .prologue
    const/4 v3, -0x1

    .line 209
    sget-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trySync() START for Persona : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iput v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I

    .line 212
    iput v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerMessageBadgeCountSync:I

    .line 214
    invoke-direct {p0, p1}, Lcom/android/server/bridge/operations/ProcessBadgeData;->handleObserverOwner(I)V

    .line 208
    return-void
.end method

.method public unRegisterBadgeObserver()V
    .locals 3

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v0

    .line 457
    .local v0, "mPersonaIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 458
    return-void

    .line 459
    :cond_0
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Content Observer is Unregistered for Badge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 455
    return-void
.end method
