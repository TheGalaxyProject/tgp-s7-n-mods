.class public Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;,
        Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;,
        Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;,
        Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final LOGV:Z

.field public static final URI_AUDIO_FILE:Landroid/net/Uri;

.field public static final URI_IMAGE_FILE:Landroid/net/Uri;

.field public static final URI_VIDEO_FILE:Landroid/net/Uri;

.field private static final sMeasureMediaTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailSize:J

.field private final mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mMainHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;

.field private final mMeasurementHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private mSystemMemSize:J

.field private mTotalSize:J

.field private final mVolume:Landroid/os/storage/VolumeInfo;

.field private totalMediaSize:J


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;)Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMainHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/util/SparseLongArray;IJ)V
    .locals 0
    .param p0, "array"    # Landroid/util/SparseLongArray;
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->addValueIfKeyExists(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/util/SparseLongArray;IJ)V
    .locals 0
    .param p0, "array"    # Landroid/util/SparseLongArray;
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0
    .param p1, "details"    # Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->setMetaSize(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 81
    const-string/jumbo v0, "StorageMeasurement"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 85
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_AUDIO_FILE:Landroid/net/Uri;

    .line 86
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_IMAGE_FILE:Landroid/net/Uri;

    .line 87
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_VIDEO_FILE:Landroid/net/Uri;

    .line 100
    new-instance v0, Landroid/content/ComponentName;

    .line 101
    const-string/jumbo v1, "com.android.defcontainer"

    const-string/jumbo v2, "com.android.defcontainer.DefaultContainerService"

    .line 100
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 104
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 105
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 106
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 107
    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 108
    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 109
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Android"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 104
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/VolumeInfo;
    .param p3, "sharedVolume"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->totalMediaSize:J

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 197
    iput-object p3, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mHandlerThread:Landroid/os/HandlerThread;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 205
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;-><init>(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMainHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;

    .line 206
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 193
    return-void
.end method

.method private static addValue(Landroid/util/SparseLongArray;IJ)V
    .locals 2
    .param p0, "array"    # Landroid/util/SparseLongArray;
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 611
    return-void
.end method

.method private static addValueIfKeyExists(Landroid/util/SparseLongArray;IJ)V
    .locals 4
    .param p0, "array"    # Landroid/util/SparseLongArray;
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    .line 616
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    .line 617
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 618
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {p0, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 615
    :cond_0
    return-void
.end method

.method private static getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 6
    .param p0, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 564
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v2

    .line 565
    .local v2, "size":J
    const-string/jumbo v1, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDirectorySize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    return-wide v2

    .line 567
    .end local v2    # "size":J
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not read memory from default container service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 698
    const-wide/16 v2, 0x0

    .line 699
    .local v2, "folderSize":J
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 700
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 701
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 702
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 703
    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 704
    .local v0, "content":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 705
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getFolderSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 703
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 707
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_1

    .line 712
    .end local v0    # "content":Ljava/io/File;
    .end local v1    # "fileList":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    return-wide v4

    .line 715
    :cond_2
    return-wide v2
.end method

.method private invalidate()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 232
    return-void
.end method

.method private measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 40
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 411
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/UserManager;

    .line 412
    .local v33, "userManager":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 414
    .local v22, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {v33 .. v33}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v35

    .line 416
    .local v35, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 415
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v8

    .line 418
    .local v8, "currentProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v6}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    .line 419
    .local v6, "details":Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v7, 0x4

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 422
    .local v9, "finished":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 427
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 428
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "currentUserInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 429
    .local v15, "currentUserInfo":Landroid/content/pm/UserInfo;
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    move/from16 v32, v0

    .line 430
    .local v32, "userId":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v14

    .line 431
    .local v14, "basePath":Ljava/io/File;
    new-instance v19, Ljava/util/HashMap;

    sget-object v5, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 432
    .local v19, "mediaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v5, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    move/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 436
    sget-object v5, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "type$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 437
    .local v28, "type":Ljava/lang/String;
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v14, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 438
    .local v23, "path":Ljava/io/File;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v26

    .line 439
    .local v26, "size":J
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 423
    .end local v14    # "basePath":Ljava/io/File;
    .end local v15    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .end local v16    # "currentUserInfo$iterator":Ljava/util/Iterator;
    .end local v19    # "mediaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v23    # "path":Ljava/io/File;
    .end local v26    # "size":J
    .end local v28    # "type":Ljava/lang/String;
    .end local v29    # "type$iterator":Ljava/util/Iterator;
    .end local v32    # "userId":I
    :cond_0
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 424
    return-void

    .line 443
    .restart local v14    # "basePath":Ljava/io/File;
    .restart local v15    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .restart local v16    # "currentUserInfo$iterator":Ljava/util/Iterator;
    .restart local v19    # "mediaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v29    # "type$iterator":Ljava/util/Iterator;
    .restart local v32    # "userId":I
    :cond_1
    iget-object v5, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->audioSize:Landroid/util/SparseLongArray;

    sget-object v7, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_AUDIO_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getMediaSize(Landroid/net/Uri;I)J

    move-result-wide v38

    move/from16 v0, v32

    move-wide/from16 v1, v38

    invoke-static {v5, v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 445
    iget-object v5, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->imageSize:Landroid/util/SparseLongArray;

    sget-object v7, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_IMAGE_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getMediaSize(Landroid/net/Uri;I)J

    move-result-wide v38

    move/from16 v0, v32

    move-wide/from16 v1, v38

    invoke-static {v5, v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 447
    iget-object v5, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->videoSize:Landroid/util/SparseLongArray;

    sget-object v7, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_VIDEO_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getMediaSize(Landroid/net/Uri;I)J

    move-result-wide v38

    move/from16 v0, v32

    move-wide/from16 v1, v38

    invoke-static {v5, v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    goto/16 :goto_0

    .line 453
    .end local v14    # "basePath":Ljava/io/File;
    .end local v15    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .end local v19    # "mediaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v29    # "type$iterator":Ljava/util/Iterator;
    .end local v32    # "userId":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_3

    .line 456
    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "user$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/UserInfo;

    .line 457
    .local v30, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v0, v30

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v7}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v34

    .line 458
    .local v34, "userPath":Ljava/io/File;
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v26

    .line 459
    .restart local v26    # "size":J
    iget-object v5, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, v30

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    move-wide/from16 v0, v26

    invoke-static {v5, v7, v0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    goto :goto_2

    .line 464
    .end local v16    # "currentUserInfo$iterator":Ljava/util/Iterator;
    .end local v26    # "size":J
    .end local v30    # "user":Landroid/content/pm/UserInfo;
    .end local v31    # "user$iterator":Ljava/util/Iterator;
    .end local v34    # "userPath":Ljava/io/File;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v18

    .line 465
    .local v18, "file":Ljava/io/File;
    if-eqz v18, :cond_4

    .line 466
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v38

    move-wide/from16 v0, v38

    iput-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 470
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    .line 474
    .local v24, "path":Ljava/lang/String;
    :goto_3
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v25

    .line 475
    .local v25, "stats":[J
    const/4 v5, 0x0

    aget-wide v38, v25, v5

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    .line 476
    const/4 v5, 0x1

    aget-wide v38, v25, v5

    move-wide/from16 v0, v38

    iput-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v25    # "stats":[J
    :goto_4
    iget-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getDeviceTotalSize(J)J

    move-result-wide v20

    .line 482
    .local v20, "mTempTotalSize":J
    iget-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-wide/from16 v38, v0

    sub-long v38, v20, v38

    move-wide/from16 v0, v38

    iput-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->systemSize:J

    .line 483
    move-wide/from16 v0, v20

    iput-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->deviceTotalSize:J

    .line 484
    iget-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->deviceTotalSize:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    .line 485
    iget-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    .line 486
    iget-wide v0, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->systemSize:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSystemMemSize:J

    .line 491
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_a

    .line 493
    const/16 v5, 0x2200

    .line 492
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v13

    .line 496
    .local v13, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v36, "volumeApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "app$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 498
    .local v11, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 499
    move-object/from16 v0, v36

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 471
    .end local v11    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "app$iterator":Ljava/util/Iterator;
    .end local v13    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v20    # "mTempTotalSize":J
    .end local v24    # "path":Ljava/lang/String;
    .end local v36    # "volumeApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_6
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "path":Ljava/lang/String;
    goto/16 :goto_3

    .line 477
    :catch_0
    move-exception v17

    .line 478
    .local v17, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "StorageMeasurement"

    const-string/jumbo v7, "Problem in container service"

    move-object/from16 v0, v17

    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 503
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v12    # "app$iterator":Ljava/util/Iterator;
    .restart local v13    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v20    # "mTempTotalSize":J
    .restart local v36    # "volumeApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_7
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v7

    mul-int v10, v5, v7

    .line 504
    .local v10, "count":I
    if-nez v10, :cond_8

    .line 505
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 506
    return-void

    .line 509
    :cond_8
    new-instance v4, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;

    .line 510
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 509
    const/4 v5, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;-><init>(ZLcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;ILjava/util/List;Landroid/os/Message;I)V

    .line 511
    .local v4, "observer":Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;
    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .restart local v31    # "user$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/UserInfo;

    .line 512
    .restart local v30    # "user":Landroid/content/pm/UserInfo;
    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 513
    .restart local v11    # "app":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v30

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v7, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_6

    .line 518
    .end local v4    # "observer":Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;
    .end local v10    # "count":I
    .end local v11    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "app$iterator":Ljava/util/Iterator;
    .end local v13    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v30    # "user":Landroid/content/pm/UserInfo;
    .end local v31    # "user$iterator":Ljava/util/Iterator;
    .end local v36    # "volumeApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_a
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 519
    return-void

    .line 410
    .restart local v4    # "observer":Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;
    .restart local v10    # "count":I
    .restart local v12    # "app$iterator":Ljava/util/Iterator;
    .restart local v13    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v31    # "user$iterator":Ljava/util/Iterator;
    .restart local v36    # "volumeApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_b
    return-void
.end method

.method private setMetaSize(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 18
    .param p1, "details"    # Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 524
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    const-class v13, Landroid/os/UserManager;

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 527
    .local v10, "userManager":Landroid/os/UserManager;
    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v11

    .line 529
    .local v11, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    .line 528
    invoke-virtual {v10, v12}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 531
    .local v4, "currentProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v12}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 532
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "currentUserInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 533
    .local v5, "currentUserInfo":Landroid/content/pm/UserInfo;
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    .line 534
    .local v7, "userId":I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    .line 535
    sget-object v14, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_AUDIO_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getAppMediaSize(Landroid/net/Uri;I)J

    move-result-wide v14

    .line 536
    sget-object v16, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_VIDEO_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getAppMediaSize(Landroid/net/Uri;I)J

    move-result-wide v16

    .line 535
    add-long v14, v14, v16

    .line 537
    sget-object v16, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->URI_IMAGE_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getAppMediaSize(Landroid/net/Uri;I)J

    move-result-wide v16

    .line 535
    add-long v14, v14, v16

    .line 534
    sub-long v2, v12, v14

    .line 538
    .local v2, "appSize":J
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v12, v7, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 540
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->deviceTotalSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->systemSize:J

    sub-long/2addr v12, v14

    .line 541
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->audioSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    .line 540
    sub-long/2addr v12, v14

    .line 541
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->videoSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    .line 540
    sub-long/2addr v12, v14

    .line 542
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->imageSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    .line 540
    sub-long/2addr v12, v14

    .line 542
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    .line 540
    sub-long/2addr v12, v14

    .line 543
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    .line 540
    sub-long v8, v12, v14

    .line 544
    .local v8, "metaSize":J
    const-string/jumbo v12, "StorageMeasurement"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "1 : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->deviceTotalSize:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " /2 : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 545
    const-string/jumbo v14, " /3 : "

    .line 544
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 545
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->systemSize:J

    .line 544
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 545
    const-string/jumbo v14, " /4 : "

    .line 544
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 545
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->audioSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    .line 544
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 546
    const-string/jumbo v14, " /5 : "

    .line 544
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 546
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->videoSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    .line 544
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 546
    const-string/jumbo v14, " /6 : "

    .line 544
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 546
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->imageSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    .line 544
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 547
    const-string/jumbo v14, " /7 : "

    .line 544
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 547
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->imageSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    .line 544
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 547
    const-string/jumbo v14, " /8 : "

    .line 544
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 547
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    .line 544
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 548
    const-string/jumbo v14, " /9 : "

    .line 544
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 548
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    .line 544
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string/jumbo v12, "StorageMeasurement"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "metaSize : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " / userId "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-gez v12, :cond_0

    .line 551
    const-wide/16 v8, 0x0

    .line 553
    :cond_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    invoke-static {v12, v7, v8, v9}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 554
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->metaSize:Landroid/util/SparseLongArray;

    invoke-static {v12, v7, v8, v9}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    goto/16 :goto_0

    .line 523
    .end local v2    # "appSize":J
    .end local v5    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUserInfo$iterator":Ljava/util/Iterator;
    .end local v7    # "userId":I
    .end local v8    # "metaSize":J
    :cond_1
    return-void
.end method


# virtual methods
.method public forceMeasure()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->measure()V

    .line 215
    return-void
.end method

.method public getAppMediaSize(Landroid/net/Uri;I)J
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 644
    const-wide/16 v10, 0x0

    .line 646
    .local v10, "size":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/storage/emulated/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Android/media/%/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 647
    .local v7, "INTERNAL_ROOT":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 648
    .local v8, "WHERE_ARG":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "SUM(_size)"

    aput-object v0, v2, v12

    .line 649
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 650
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 652
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 653
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 656
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_1
    return-wide v10
.end method

.method public getDeviceTotalSize(J)J
    .locals 11
    .param p1, "totalSize"    # J

    .prologue
    .line 720
    const/4 v4, 0x2

    .line 721
    .local v4, "power":I
    const-wide/16 v2, 0x0

    .line 723
    .local v2, "mTempTotalSize":J
    new-instance v5, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 724
    .local v5, "statFs":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v6

    add-long v0, p1, v6

    .line 727
    .local v0, "mRealTotalSize":J
    :goto_0
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    const-wide/32 v8, 0x40000000

    mul-long v2, v8, v6

    .line 729
    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    .line 736
    iput-wide v2, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    .line 737
    return-wide v2

    .line 732
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getKnoxTotalSize(I)J
    .locals 20
    .param p1, "id"    # I

    .prologue
    .line 742
    const-wide/16 v12, 0x0

    .line 743
    .local v12, "size":J
    const-string/jumbo v14, "/data/knox/data/"

    .line 744
    .local v14, "userPackageDirectory1":Ljava/lang/String;
    const-string/jumbo v15, "/data/user/"

    .line 746
    .local v15, "userPackageDirectory2":Ljava/lang/String;
    const-string/jumbo v9, "/storage/emulated/"

    .line 747
    .local v9, "internalSdCardDirectory1":Ljava/lang/String;
    const-string/jumbo v10, "/mnt/knox/default/emulated/"

    .line 748
    .local v10, "internalSdCardDirectory2":Ljava/lang/String;
    const-string/jumbo v11, "/data/knox/sdcard/"

    .line 750
    .local v11, "internalSdCardDirectory3":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 751
    .local v3, "file1":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 753
    .local v4, "file2":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 754
    .local v5, "file3":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    .local v6, "file4":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 757
    .local v7, "file5":Ljava/io/File;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 758
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 759
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 760
    .local v8, "fileList":[Ljava/io/File;
    if-eqz v8, :cond_2

    .line 761
    const/16 v16, 0x0

    array-length v0, v8

    move/from16 v17, v0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    aget-object v2, v8, v16

    .line 762
    .local v2, "content":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 763
    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getFolderSize(Ljava/io/File;)J

    move-result-wide v18

    add-long v12, v12, v18

    .line 761
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 765
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v18

    add-long v12, v12, v18

    goto :goto_1

    .line 770
    .end local v2    # "content":Ljava/io/File;
    .end local v8    # "fileList":[Ljava/io/File;
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 742
    const-wide/16 v18, 0x0

    .line 770
    add-long v12, v18, v16

    .line 774
    :cond_2
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 775
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 776
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 777
    .restart local v8    # "fileList":[Ljava/io/File;
    if-eqz v8, :cond_5

    .line 778
    const/16 v16, 0x0

    array-length v0, v8

    move/from16 v17, v0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    aget-object v2, v8, v16

    .line 779
    .restart local v2    # "content":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 780
    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getFolderSize(Ljava/io/File;)J

    move-result-wide v18

    add-long v12, v12, v18

    .line 778
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 782
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v18

    add-long v12, v12, v18

    goto :goto_3

    .line 787
    .end local v2    # "content":Ljava/io/File;
    .end local v8    # "fileList":[Ljava/io/File;
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v12, v12, v16

    .line 790
    :cond_5
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 791
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 792
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 793
    .restart local v8    # "fileList":[Ljava/io/File;
    if-eqz v8, :cond_8

    .line 794
    const/16 v16, 0x0

    array-length v0, v8

    move/from16 v17, v0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    aget-object v2, v8, v16

    .line 795
    .restart local v2    # "content":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 796
    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getFolderSize(Ljava/io/File;)J

    move-result-wide v18

    add-long v12, v12, v18

    .line 794
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 798
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v18

    add-long v12, v12, v18

    goto :goto_5

    .line 803
    .end local v2    # "content":Ljava/io/File;
    .end local v8    # "fileList":[Ljava/io/File;
    :cond_7
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v12, v12, v16

    .line 807
    :cond_8
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 808
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 809
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 810
    .restart local v8    # "fileList":[Ljava/io/File;
    if-eqz v8, :cond_b

    .line 811
    const/16 v16, 0x0

    array-length v0, v8

    move/from16 v17, v0

    :goto_6
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    aget-object v2, v8, v16

    .line 812
    .restart local v2    # "content":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 813
    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getFolderSize(Ljava/io/File;)J

    move-result-wide v18

    add-long v12, v12, v18

    .line 811
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 815
    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v18

    add-long v12, v12, v18

    goto :goto_7

    .line 820
    .end local v2    # "content":Ljava/io/File;
    .end local v8    # "fileList":[Ljava/io/File;
    :cond_a
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v12, v12, v16

    .line 824
    :cond_b
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 825
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 826
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 827
    .restart local v8    # "fileList":[Ljava/io/File;
    if-eqz v8, :cond_e

    .line 828
    const/16 v16, 0x0

    array-length v0, v8

    move/from16 v17, v0

    :goto_8
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_e

    aget-object v2, v8, v16

    .line 829
    .restart local v2    # "content":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 830
    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getFolderSize(Ljava/io/File;)J

    move-result-wide v18

    add-long v12, v12, v18

    .line 828
    :goto_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 832
    :cond_c
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v18

    add-long v12, v12, v18

    goto :goto_9

    .line 837
    .end local v2    # "content":Ljava/io/File;
    .end local v8    # "fileList":[Ljava/io/File;
    :cond_d
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v12, v12, v16

    .line 840
    :cond_e
    const-string/jumbo v16, "StorageMeasurement"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Knox total size : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-wide v12
.end method

.method public getMediaSize(Landroid/net/Uri;I)J
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    .prologue
    .line 623
    const-wide/16 v12, 0x0

    .line 625
    .local v12, "size":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/storage/emulated/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 626
    .local v7, "INTERNAL_ROOT":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 627
    .local v8, "WHERE_ARG":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "SUM(_size)"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 628
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, "where":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 632
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 633
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 636
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-wide v12

    .line 638
    :catch_0
    move-exception v10

    .local v10, "e":Landroid/database/CursorWindowAllocationException;
    goto :goto_0
.end method

.method public measure()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 220
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 228
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 226
    return-void
.end method

.method public setReceiver(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 209
    :cond_1
    return-void
.end method
